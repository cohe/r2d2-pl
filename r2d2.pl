$counter = 0;
$sound = 21;
$length = 10;
 
 
while ($counter < 19) {
 	
	#defines the frequency of one single sound
	$sound = rand(3978)+21;
 	
	#defines the length of one single sound
	$length = rand(250) + 10;

	#sends a beep command to the system (ensure that pcspkr is commented in /etc/modeprobe.d/blacklist.conf)
 	system 'beep -e /dev/input/by-path/platform-pcspkr-event-spkr -f ' . $sound . ' -l '. $length;
 
	#if you want to debug your melody:
	# print($counter);
	# print("\n");
	# print($sound . " : " . $length);
	# print("\n");
 	$counter++;
}
 
 

 
