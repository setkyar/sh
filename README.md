# sh

Clone this to `~/code/sh` directory. Add the following code block to `.bash_profile` or `.bashrc`

```
if [ -f ~/code/sh/.bash_custom ]; then 
    source ~/code/sh/.basb_custom
fi 
```

Don't forget to make `chmod +x ~/code/sh/*.sh` executable.

### List of bashes

	message.sh 				for message notification
	music.sh   				for playing music from terminal
	php-syntax-check.sh		for checking PHP syntax
	db-clean.sh				for cleaning up exported .sql to be able to import. Especially on JSON fields.