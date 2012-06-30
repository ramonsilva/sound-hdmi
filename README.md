HDMI SOUND
==========

This project was developed to help others like me that want to use HDMI, but ubuntu doesn't recognize the change of sound channel.

With a few steps you ready to use.

Let's go!


Installation
------------

* Clone the project
* Copy the file 100-sound-hdmi.rules to where is locate your udev rules, in my case (/etc/udev/rules.d). (super user)
* Copy the file sound.sh to /opt/ (If you want change this locate, You'll have to set this on file above).
* Make the file sound.sh executable (chmod 755 sound.sh)
* Restart udev: (stop udev) and (start udev) (super user)
* Enjoy!


Other Thoughts
--------------

On the file with rules, I would like to pass my user, but when I did using 'whoiam' didn't work, Do you know the reason?
