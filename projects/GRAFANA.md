# This is the instructions for installing the grafana dashboard.

## Install grafana

```
curl https://raw.githubusercontent.com/User5029/Projects/master/scripts/grafanaInstall.sh | bash
```
You might be prompted to enter your password. If so please enter the password with sudo access.

## Logging into grafana

Navigate to the url displayed in the terminal.
The default username is ```admin``` and the default password is ```admin```.

### Changing the password: 
Change your password when prompted.

### Changing the port:
To change the port you need to edit the ```grafana.ini``` file.
This is located at ```/etc/grafana/grafana.ini```

**Important** - The port can NOT be lower than 1024.

Open the file in your favourite text editor. Scroll down until you see a line that looks like this: ```;http_port = 3000```. First change the "3000" to the port to you want to use. After you have done that remove the ";" infront of the line. Then save the file.
Run the command:
```sudo systemctl restart grafana-server``` to restart the service.