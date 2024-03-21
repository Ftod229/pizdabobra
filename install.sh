echo "=============================="
echo "|                            |"
echo "|       Script by Ftod       |"
echo "|                            |"
echo "=============================="
echo " "
echo "=============================="
echo "|         Продолжить?        |"
echo "=============================="
select yn in "Yes" "No" ; do
    case $yn in
         Yes ) make install; break
         No  exit
     esac
done
sudo pacman -S --noconfirm wine-staging
sudo pacman -S --noconfirm wine-nine
sudo pacman -S --noconfirm wine-mono
sudo pacman -S --noconfirm telegram-desktop
sudo pacman -S --noconfirm audacity
sudo pacman -S --noconfirm kate
sudo pacman -S --noconfirm audacious
sudo pacman -S --noconfirm git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg --noconfirm -si
yay --noconfirm -S portproton
# Функция для очистки экрана
clear_screen() {
    clear
}

# Функция для отображения меню
show_menu() {
    echo "==========================="
    echo "|                         |"
    echo "|   Установка браузера    |"
    echo "|                         |"
    echo "==========================="
    echo "1. Yandex browser"
    echo "2. Google chrome"
    echo "3. Firefox"
    echo "4. Доп программы"
    echo "5. Выйти"
}

# Функция для отображения подменю
show_submenu() {
    echo "==========================="
    echo "|                         |"
    echo "|   Установка программ    |"
    echo "|                         |"
    echo "==========================="
    echo "1. Lutris"
    echo "2. QMidiPlayer"
    echo "3. Подпункт 3"
    echo "4. Подпункт 4"
    echo "5. Подпункт 5"
    echo "6. Подпункт 6"
    echo "7. Подпункт 7"
    echo "8. Подпункт 8"
    echo "9. Подпункт 9"
    echo "10. Подпункт 10"
    echo "11. Вернуться в главное меню"
}

# Основной цикл меню
main_menu() {
    clear_screen
    show_menu
    read -p "Выберите пункт меню: " choice

    case $choice in
        1)
            echo "Yandex browser"
            yay --noconfirm -S yandex-browser
            ;;
        2)
            echo "Google chrome"
            yay --noconfirm -S google-chrome
            ;;
        3)
            echo "Firefox"
            sudo pacman --noconfirm -S firefox
            ;;
        4)
            submenu
            ;;
        5)
            echo "До связи"
            exit 0
            ;;
        *)
            echo "Неверный ввод. Попробуйте еще раз."
            ;;
    esac

    # Возврат к основному меню
    read -p "Нажмите Enter для продолжения..." continue
    main_menu
}

# Подменю
submenu() {
    clear_screen
    show_submenu
    read -p "Выберите пункт подменю: " choice

    case $choice in
        1)
            echo "Lutris"
            yay -S --noconfirm Lutris
            ;;
        2)
            echo "QMidiPlayer"
            yay -S --noconfirm QMidiPlayer
            ;;
        3)
            echo "Вы выбрали Подпункт 3"
            ;;
        4)
            echo "Вы выбрали Подпункт 4"
            ;;
        5)
            echo "Вы выбрали Подпункт 5"
            ;;
        6)
            echo "Вы выбрали Подпункт 6"
            ;;
        7)
            echo "Вы выбрали Подпункт 7"
            ;;
        8)
            echo "Вы выбрали Подпункт 8"
            ;;
        9)
            echo "Вы выбрали Подпункт 9"
            ;;
        10)
            echo "Вы выбрали Подпункт 10"
            ;;
        11)
            main_menu
            ;;
        *)
            echo "Неверный ввод. Попробуйте еще раз."
            ;;
    esac

    # Возврат к подменю
    read -p "Нажмите Enter для продолжения..." continue
    submenu
}

# Запуск основного меню
main_menu

yayinst
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg --noconfirm -si
