# PRUSA-MK2 tweaks
Usefull stuff when building a Prusa-I3 MK2 in good old reprap style yourself - clearly also going for some mutations as evolution is requesting ...

Most of the files are created by Josef Prusa - So in first thanks for keeping everything open source and for the tatoo!

Drylin:
The Drylin X-Carriage and Z-Ends are for the brilliant drylin® R - RJUM-01-08 linear bearings (quite expensive though but no comparsion to this grey wobbely discount versions).

PSU:
The originally used Prusa Power Supply is quite hard to get - the IOTech PSU Cover fits the most common formfactor
e.g. source it from Amazon (and help Tom Sanladerer): https://www.amazon.de/LemonBest-Schalter-Transformer-Netzteil-LED-Streifen/dp/B0122SRJ1K/ref=sr_1_1?ie=UTF8&sr=8-1&keywords=12v+20a&tag=toms3d-21 

I also added a USB-StepDown converter mount in Josef zip-tie style. This is very handy if you'd later on like to add an Octoprint Raspberry and would like to get rid of the additional power supply. The 20A poswer supply can handle the little additional load to my experience and we even have a handy free 12V slot at the power supply. But clearly:
a) be super carefull when wiring the  it up to avoid any chance of mains power getting connection to it by loose cables.
b) Do it at your own risk - If you grilled yourself, your power supply, new iPhone or your house burns down - don't put it on me.

TR8x8 Threaded-Rod Nut:
A good and practical solution when dealing with wobbeling brass Z-Nuts for TR8x8 threaded rod motors is to just print them yourself in PLA or even better with Drylin® filament, which you should print really really slow and in a closed chamber if you'd like to have a chance of usable parts. You will need to experiment a bit with the right diameter - mine worked best in 8.8 for the quite expanding Drylin Filament and 8.5 for PLA ...
Thanks to davtr for creating the base for this (http://www.thingiverse.com/thing:1903200)!

Z-motor mounts:
The 300mm Z-Motor mount is an easy solution to use 300mm threaded rod Steppers (make sure you get TR8x8 ones) instead of the 310mm version Josef Prusa is using which are near to impossible to get. The therfore 10mm smaller space above the motor was simply unused, so don't worry that yours is shorter ;-)

Extruder:
The moded extruder body & cover have now a shifting parameter which can shift the complete Hotend inside the part by a few mm. This is really usefull if you are using a diffrent extruder drive gear (e.g. E3D) which has a diffrent diameter than the quite deep cut original. 
The needed change is probably quite low (between -0.5 and -1.5mm) but the feed in point for the filament is quite sensitive and I could find no other solution then moving the complete hotend inside the extruder body. Known bug: the idler gets quite scratchy as it is not changed - I kept up with the CCCC motto (works for me ;-)
Also I've closed up the Extruder cooling channel at the side of the Pinda probe to avoid heating the probe up and have it temperature drift after a while of being in the stream of warm air. I also stregthenend the Pinda probe holder as it should win against the stepper instead of breaking.

Variable W/H Mainboard Base & Cover
This is a handy Version of the orignal Rambo housing where you can essentially define board size and mounting whole distance and you have moded version. 
So you only need to care about the USB and other breakouts. The contained one is for the Trigorilla board which is not available anymore - but s.a. this should not be an issue.

So I hope this can be handy to people who like to dig into the self building adventure - just another short Warning. This is by no means something finished or with extensive documentation - but if you know what you want it might save you a couple of hours. 
In fact its the outcome from recently building 2 machines together with friends and it was quite some fun and clearly struggle!
Would love to hear from others who celebrate the reprap idea ...

Happy printing!
Christoph

P.S: Be carefull when using steppers without a flat sided shaft. I rewired a complete machine because I thought the stepper looses steps, until I noticed that the pulley was shifting ever so slightly at hard turns (Again corfirmed in 80% of the cases you deal with mechanical issues)... If you cannot get stppers with flattenend shaft use a Dremel and scrape one side a bit flat in a minute.
