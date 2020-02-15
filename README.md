## What this does

- Connect IFTTT Applet to write a file with shell command to Dropbox
- This script will download the files from Dropbox 
- Run the scripts on the host
- Remove the scripts locally and remotely after it's done

## How to use

- Install and follow the instructions on [Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader)
- Setup Applet on IFTTT with the following
  - IF: Button Widget
  - THEN: Dropbox - **Create a text file** with the following
      - File name: Leave it as OccurredAt
      - Content: The script you want to run
      - Dropbox folder path: The folder of your app as created in Dropbox Apps (eg. Apps/<MyAppName>)
- Clone this repository
- Edit `run-scripts.sh` and edit the variables
- Setup cron to run `run-scripts.sh` every minute or anytime up to your preference.
- Create a widget on your phone with IFTTT Button Widget to trigger the Applet

## Additional information

Instead of creating Button Widget, you can also use other services on IFTTT, such as Google Assistant to control your
devices.

## Author

Kong Jin Jie

Inspired by Garry Goh