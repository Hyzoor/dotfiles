#!/bin/bash
# Menu rápido de sistema para Wofi
# Permite configurar Wi-Fi, Bluetooth, Audio, Modo Avión y Brillo

# Opciones del menú
options=("Wi-Fi" "Bluetooth" "Audio" "Modo Avión" "Brillo")

# Mostrar menú en Wofi
choice=$(printf "%s\n" "${options[@]}" | wofi --show dmenu --prompt "Ajustes" --style ~/.config/wofi/menu.css)

case "$choice" in
    "Wi-Fi")
        # Abrir selector de redes (requiere nm-connection-editor)
        nm-connection-editor &
        ;;
    "Bluetooth")
        # Abrir interfaz de bluetoothctl en terminal
        gnome-terminal -- bluetoothctl
        ;;
    "Audio")
        # Abrir control de volumen (PulseAudio / PipeWire)
        pavucontrol &
        ;;
    "Modo Avión")
        # Apagar/encender todas radios
        if nmcli radio all | grep -q "disabled"; then
            nmcli radio all on
            notify-send "Modo Avión desactivado"
        else
            nmcli radio all off
            notify-send "Modo Avión activado"
        fi
        ;;
    "Brillo")
        # Menu rápido de brillo
        brightness=$(printf "Subir\nBajar\n50%\n75%\n100%" | wofi --show dmenu --prompt "Brillo")
        case "$brightness" in
            "Subir") brightnessctl set +10% ;;
            "Bajar") brightnessctl set 10%- ;;
            "50%") brightnessctl set 50% ;;
            "75%") brightnessctl set 75% ;;
            "100%") brightnessctl set 100% ;;
        esac
        ;;
esac
