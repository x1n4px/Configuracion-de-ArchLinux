 
 
# Configuracion-de-ArchLinux

## Una vez tenemos la distribución de archlinux en el usb, iniciamos el ordenador. Si el ordenador tiene ethernet, podemos saltar este paso, en caso de tener wifi:
```
loadkeys es
ip link set wlan0 up
wpa_passphrase WIFI CLAVE > /etc/wifi
cat /etc/wifi
wpa_supplicant -B -i wlan0 -D wext -c/ext/wifi
dhclient
ping 8.8.8.8
```
Una vez que hemos configurado el adaptador wifi:
```
archinstall
```
Configuramos la instalación del sistema operativo


## Instalación de software útil

### YAY
```
sudo pacman -S base-devel;
sudo pacman -S git;
cd /opt;
sudo git clone https://aur.archlinux.org/yay.git;
sudo chown -R in4p:users ./yay;
cd yay;
makepkg -si;
```

### OneDrive
```
cd /home/user/;
git clone https://aur.archlinux.org/onedrive.git;
sudo chowm -R in4p:users ./onedrive;
cd onedrive ;
makepkg -si;
tar -xvf onedrive-1.1.4/;
cd onedrive-1.1.4;
#ABRIMOS SRC/ONEDRIVE-1.1.4/ -> DESDE TERMINAL EJECUTAMOS ONEDRIVE
#NOS MANDARA UN LINK PARA INICIAR SESION EN ONEDRIVE, INICIAMOS SESION
#Y COPIAMOS LA URL DE LA PAGINA EN LA TERMINAL
systemctl --user enable onedrive;
systemctl --user start onedrive;
```

### ZSH / P10K
```
sudo pacman -S zsh zsh-completions zsh-autosuggestions;
chsh -s /bin/zsh;
sudo pacman -S git curl;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
nano ~/.zshrc;
#TEMA->AGNOSTER
#CERRAR SESION
yay -S --noconfirm zsh-theme-powerlevel10k-git;
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc;
sudo pacman -S powerline-common awesome-terminal-fonts;
yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k;
p10k configure;
#REINICIAMOS TERMINAL
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
nano ~/.zshrc
EDITAMOS
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)
source ~/.zshrc
```

### Visual studio code
```
yay -S visual-studio-code-bin;
``` 


### IntelIJ Idea
Para este ide, en caso de tener cuenta educativa, podemos instalar directamente JetBrains toolBoxKit, en otro caso:
```
DESCARGAMOS EL PAQUETE INTEIJ IDEA COMMUNITY DESDE LA WEB OFICIAL
DESCOMPRIMIMOS EL FICHERO EN /home
DENTRO DE BIN
EJECUTAMOS ./idea.sh
PARA MAYOR COMODIDAD SE CREA UN ATAJO
```

### GitHub
```
sudo pacman -S github-cli;
gh auth login; //Te logeas en tu cuenta desde la terminal
```

### VirtualBox Archlinux
```
sudo pacman -S virtualbox;
// virtualbox-host-modules-arch (2).
sudo pacman -S  linux-lts-headers;
sudo modprobe vboxdrv;
sudo modprobe vboxdrv vboxnetadp vboxnetflt vboxpci;
sudo nano /etc/modules-load.d/virtualbox.conf
AÑADIMOS AL FICHERO:
vboxdrv
vboxnetadp
vboxnetflt
vboxpci

sudo gpasswd -a $USER vboxusers;
sudo pacman -S virtualbox-guest-iso;
```

### Virtualbox Manjaro
```
uname -r;
sudo pacman -Ss virtualbox-host-modules;

// tenemos que buscar el que tenga la misma version que el uname, por ej, para uname 6.6, buscamos un linux66-...
sudo pacman -S linux65-virtualbox-host-modules;

sudo pacman -S virtualbox;
sudo vboxreload;
vboxmanage -v | cut -dr -f1;
wget https://download.virtualbox.org/virtualbox/7.0.10/Oracle_VM_VirtualBox_Extension_Pack-7.0.10.vbox-extpack;
sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.10.vbox-extpack;
vboxmanage list extpacks;
sudo usermod -aG vboxusers $USER;
groups $USER;
``



### Maven
```
yay -S maven
```
### Java
```
pacman -sS java | grep jre
```

## Tienda del S.O.

### Xournal (editor de pdfs)

### TexMaker (Latex)

### Wireshark

### [chatGTP en terminal](https://github.com/m1guelpf/plz-cli)
```
curl -fsSL https://raw.githubusercontent.com/m1guelpf/plz-cli/main/install.sh | sh -
export OPENAI_API_KEY='sk-XXXXXXXX'
```

### Node && npm for angular
```
sudo yay -S npm;
sudo pacman -S nodejs-lts-hydrogen ;
sudo npm install -g @angular/cli;

```

### Intellij Toolbox
```
yay -S jetbrains-toolbox

``` 


### Haskell
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
cabal --http-transport=plain-http update
cabal --http-transport=plain-http install --lib QuickCheck
```

### MYSQL
```
sudo pacman -Syu;
sudo pacman -S mysql;
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql;
sudo systemctl start mysqld;
sudo systemctl status mysqld;
sudo mysql_secure_installation;
```

Para crear usuario:
```
sudo mysql;
CREATE USER ‘<username>’@’localhost’ IDENTIFIED BY ‘<password>’;
GRANT ALL PRIVILEGES ON *.* TO ‘<username>’@’localhost’ WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
mysql -u testuser -p;
CREATE DATABASE <dbname>;
SHOW DATABASES
```

Para acceder:
```
mysql -u usuario -p
```



# Atajos
```
alias edit="nano ~/.zshrc"
alias gedit="source ~/.zshrc"
alias c="clear"
alias o="nautilus /home/in4p/OneDrive/2022"
alias uma="cd /home/in4p/OneDrive/2022;ls"
alias actualizate="sudo pacman -Syu"
alias actualizar="sudo pacman -S"
alias paquetes="pacman -Qe"
alias idea="cd /home/in4p/programas/ideaIC-2022.2.3/idea-IC-222.4345.14/bin;./idea.sh"
alias n="nautilus ./"
alias install="sudo pacman -S"
alias py="cd /home/in4p/programas/pycharm-community-2022.2.3/bin;./pycharm.sh"
alias startTomcat="sudo /opt/apache-tomcat-9/bin/startup.sh"
alias stopTomcat="sudor /opt/apache-tomcat-9/bin/shutdown.sh"
alias borrar="sudo rm -r"
alias cup="java -jar /home/in4p/OneDrive/2022/Proc.Leng/CUP/java-cup-11b.jar"
alias cup2="javac -cp /home/in4p/OneDrive/2022/Proc.Leng/CUP/java-cup-11b-runtime.jar *.java"
alias pl="cd /home/in4p/OneDrive/2022/Proc.Leng;ls"
alias unistall="sudo pacman -R"
alias copiar="cp -r"
alias borrar="rm -r -f -d -v"
alias g="cd /home/in4p/Documents/otros && ./gitHelp.sh"
alias cc="clear && ls"
alias mirarpdf="pdfinfo"
alias mirarfoto="exiftool"
alias espacio="du -h"
alias push="git push origin main"
alias pull="git pull origin main"
alias enlace="ln -s"
alias h2="java -cp /home/in4p/.m2/repository/com/h2database/h2/2.1.214/h2-2.1.214.jar org.h2.tools.Server -ifNotExists"
alias sjar="java -jar target/spring.jpa.demo-0.0.1-SNAPSHOT.jar"
alias h1="mvn package && java -jar target/MainMenuShop-0.0.1-SNAPSHOT.jar"
alias pl="cd /home/in4p/git/Procesadores-de-Lenguaje; git add .; git commit -m "act"; git push"
alias basic="git add .; git commit -m "act";git push"
alias fb="npm run build; firebase deploy"
alias astroversion="nvm use v20.10.0"
alias angularversion="nvm use v18.10.0"
alias fgumadump="mysqldump -u root -p fgumaDB > dump.sql"




```
