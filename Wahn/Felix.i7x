Version 1 of Felix by Wahn begins here.
[Version 1: Initial Setup, quest, two NPCs]

"Adds an NPC named Felix to the Flexible Survival game"

[ HP states of Felix                                                 ]
[   0: not yet met                                                   ]
[   1: standing out in the plains                                    ]
[   2: standing out in the plains, BF Andre close to him             ]
[  99: standing out in the plains, Andre driven off                  ]
[ 100: (removed from game)                                           ]

[ Libido states of Felix (Stalker-Quest with Andre)                  ]
[   0: not talked about it yet                                       ]
[   1: told the player he feels like someone is following him        ]
[   2: player searched, but found nothing                            ]
[   3: player found tracks                                           ]
[   4: player saw Andre (who escaped)                                ]
[   5: player talked to Andre                                        ]
[   6: player told Felix about Andre                                 ]
[  99: Andre driven off                                              ]
[ 100: Andre driven off, told Felix about him                        ]

Section 1 - Walk-in Event to put him into the dry plains room

instead of navigating Dry Plains while (HP of Thomas > 0 and HP of Thomas < 100 and Libido of Thomas > 9 and Libido of Thomas < 20 and (FelixSaved - turns > 8) and HP of Felix is 0):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	project the Figure of Felix_icon;
	say "     As you come out into the dry plains, you see a centaur at your usual meeting spot with Thomas - though it isn't him, but Felix, the young centaur colt you helped save. He smiles and waves as he notices you, then trots closer. 'Hello there, nice to see you again. [if Libido of Thomas is 10]Thomas is[else if Libido of Thomas is 11]Thomas and Sandy are[else if Libido of Thomas is 12]Thomas and the others are[end if] out gathering supplies and I offered to wait here in case you came along. I - I wanted to speak with you privately anyways.' He hesitates a moment, biting his lip before continuing. 'You see - I think there's... something stalking me, hiding out in the high grass. I feel like - whatever it is - watches me from time to time. But then, it might just be paranoia and I don't want to alarm everyone for nothing. Could you maybe help me out with this? There might be tracks or something...'";
	LineBreak;
	say "     What do you answer? Do you want to try looking for Felix's mysterious stalker ([link]Y[as]y[end link]), or wave it off as just his imagination ([link]N[as]n[end link]) ?";
	if Player consents:
		say "     You ask Felix where he thought to last have noticed something, then make your way out into the high grass.";
		let bonus be (( Perception of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Perception-Check)[line break]";
		LineBreak;
		increase diceroll by bonus;
		if diceroll > 10:
			say "     Searching around for a while, you find a relatively fresh trail showing footprints of some creature. The marks on the ground look like they were made by something quadrupedal, its hands and feet a bit larger than a human's and armed with claws. Following the trail, you come to a flattened area of grass - looks like the creature lay down here to observe Felix unnoticed from behind the screen of grass. You'd say it's at least as large as a horse, from the size of the flattened imprint...";
			LineBreak;
			say "     Coming back to Felix, you tell him what you found. He's both relieved at not imagining things, as well as a bit frightened as you recount the clawed footmarks and the size of his stalker. 'Hm, it might be gone now... but I bet it'll be back. I'll be extra vigilant from now on and keep an eye out. Maybe you could... do something about it? I will tell you when I think it is close.'";
			now Libido of Felix is 3;
		else:
			say "     Searching around for a while, you find - grass, dry ground, and nothing much else. Seems like Felix was just imagining things after all...";
			now Libido of Felix is 2;
	else:
		say "     Not in the mood to go trekking through the high grass for probably nothing, you do your best to calm Felix down. Your conversation soon turns to other topics and you chat until Thomas returns some time later.";
		now Libido of Felix is 1;
	now HP of Felix is 1;
	move Felix to Dry Plains;
	move player to Dry Plains;

instead of navigating Dry Plains while (HP of Felix is 1 and Libido of Felix is 3 and a random chance of 1 in 2 succeeds):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	move player to Dry Plains;
	project the Figure of Felix_icon;
	say "     As you come out into the dry plains to your usual meeting spot with the centaurs, Felix is waiting for you. He's trying his best to look calm, but you can see something is up. 'See that large pile of rubble back there in the midst of all that high grass? I saw something moving there just now.' He gives a slight sideways nod with his head, as not too obviously point out the location. 'Please, can you go look?'";
	say "[Stalker1]";

to say Stalker1:
	say "     What do you do? Leave the meeting spot again and circle around in hope of catching the stalker ([link]Y[as]y[end link]), or tell him you don't have time right now ([link]N[as]n[end link]) ?";
	if Player consents:
		say "     You clap Felix on the shoulder and give him a hug, whispering, 'OK, you stay calm and act normally. I'll circle around and come up from behind the rubble. Hopefully I can surprise whatever is watching you...";
		LineBreak;
		say "     With that, you wave goodbye to Felix and Thomas and make your way out into the plain in a wholly different direction. Trekking around the camp site in a wide arch, ducking into the grass as good as you can, you find yourself with the rubble mound between you and the centaurs. What next - do you want to climb over the rubble to surprise the watcher by coming from behind ([link]Y[as]y[end link]), or walk around it ([link]N[as]n[end link]) (with a higher chance of being seen)?";
		if Player consents:
			let bonus be (( Dexterity of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Dexterity-Check)[line break]";
			LineBreak;
			increase diceroll by bonus;
			if diceroll > 10:
				say "     Carefully selecting your hand and footholds, you make your way up on the large mound of rubble. With the higher position, you can clearly see the centaurs in the distance, as well as a creature lurking in the grass, crouched low to keep itself hidden and watching your friends. Looks like a large lizard, about as big as a horse. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass. Continuing on your climb, you move down the other side of the rubble until you're standing close behind the creature.";
				say "[AndreMeeting]";
			else:
				say "     Carefully selecting your hand and footholds, you make your way up on the large mound of rubble. With the higher position, you can clearly see the centaurs in the distance, as well as a creature lurking in the grass, crouched low to keep itself hidden and watching your friends. Looks like a large lizard, about as big as a horse. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass.";
				LineBreak;
				say "     Sadly, as you try to climb over the top of the rubble mound, you knock loose a chunk of concrete that noisily bounces down over the rocks. You do manage to duck behind a piece of a wall jutting out of the pile, so you're not actually spotted, but it seems that the stalking lizard is careful. When you raise your head to look down to the lurking spot again, you see only the flattened grass as a sign of its presence, nothing else.";
				say "[AndreEscaped]";
		else:
			if a random chance of 1 in 4 succeeds:
				say "     Stalking through the high grass, you manage to stay unnoticed and move close to where Felix stalker should be. Looking around, you see a creature lurking in the grass, crouched low to keep itself hidden and watching your friends. Looks like a large lizard, about as big as a horse. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass. You continue to move forward until you're close behind the creature.";
				say "[AndreMeeting]";
			else:
				say "     Doing your best to stay hidden in the grass, something nevertheless seems to have noticed you. You see a slight movement between the grass somewhere ahead, then a scaled shape about as big as a horse dashes away out of its hiding spot. Looks like a quadrupedal lizard with sand-yellow scales that serve terribly well to blend with the dry grass. And it's fast - you don't think you could catch it now.";
				say "[AndreEscaped]";
	else:
		say "     Not in the mood to go trekking through the high grass, you do your best to calm Felix down and tell him you'll look into it another time. He looks a rather disappointed, but gives you a curt nod and says he understands.";
	move player to Dry Plains;

instead of navigating Dry Plains while (HP of Felix is 1 and Libido of Felix is 4 and a random chance of 1 in 2 succeeds):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	move player to Dry Plains;
	say "     As you come out into the dry plains to your usual meeting spot with the centaurs, Felix is waiting for you. He's trying his best to look calm, but you can see something is up. 'It's back! The predator! See that large pile of rubble back there in the midst of all that high grass? I saw something moving there just now.' He gives a slight sideways nod with his head, as not too obviously point out the location. 'Please, don't let it eat me!'";
	say "[Stalker2]";

to say Stalker2:
	say "     What do you do? Leave the meeting spot again and circle around in hope of catching the stalker ([link]Y[as]y[end link]), or tell him you don't have time right now ([link]N[as]n[end link]) ?";
	if Player consents:
		say "     You clap Felix on the shoulder and give him a hug, whispering, 'OK, you stay calm and act normally. I'll circle around and come up from behind the rubble. Hopefully I can surprise your lizard stalker this time...";
		say "     With that, you wave goodbye to Felix and Thomas and make your way out into the plain in a wholly different direction. Trekking around the camp site in a wide arch, ducking into the grass as good as you can, you find yourself with the rubble mound between you and the centaurs. What next - do you want to climb over the rubble to surprise the stalker by coming from behind ([link]Y[as]y[end link]), or walk around it ([link]N[as]n[end link]) (with a higher chance of being seen)?";
		if Player consents:
			let bonus be (( Dexterity of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Dexterity-Check)[line break]";
			LineBreak;
			increase diceroll by bonus;
			if diceroll > 10:
				say "     Carefully selecting your hand and footholds, you make your way up on the large mound of rubble. With the higher position, you can clearly see the centaurs in the distance, as well as a creature lurking in the grass, crouched low to keep itself hidden and watching your friends. Looks like a large lizard, about as big as a horse. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass. Continuing on your climb, you move down the other side of the rubble until you're standing close behind the creature.";
				say "[AndreMeeting]";
			else:
				say "     Carefully selecting your hand and footholds, you make your way up on the large mound of rubble. With the higher position, you can clearly see the centaurs in the distance, as well as a creature lurking in the grass, crouched low to keep itself hidden and watching your friends. Looks like a large lizard, about as big as a horse. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass.";
				LineBreak;
				say "     Sadly, as you try to climb over the top of the rubble mound, you knock loose a chunk of concrete that noisily bounces down over the rocks. You do manage to duck behind a piece of a wall jutting out of the pile, so you're not actually spotted, but it seems that the stalking lizard is careful. When you raise your head to look down to the lurking spot again, you see only the flattened grass as a sign of its presence, nothing else.";
				say "[AndreEscapedAgain]";
		else:
			if a random chance of 1 in 4 succeeds:
				say "     Stalking through the high grass, you manage to stay unnoticed and move close to where Felix stalker should be. Looking around, you see the large lizard-creature lurking in the grass, crouched low to keep itself hidden and watching your friends. It's quadrupedal and has sand-yellow scales that serve well to blend with the dry grass. You continue to move forward until you're close behind the creature.";
				say "[AndreMeeting]";
			else:
				say "     Doing your best to stay hidden in the grass, something nevertheless seems to have noticed you. You see a slight movement between the grass somewhere ahead, then a scaled shape about as big as a horse dashes away out of its hiding spot. Looks like a quadrupedal lizard with sand-yellow scales that serve terribly well to blend with the dry grass. And it's fast - you don't think you could catch it now.";
				say "[AndreEscaped]";
	else:
		say "     Not in the mood to go trekking through the high grass, you do your best to calm Felix down and tell him you'll look into it another time. He looks a rather disappointed, saying, 'I thought you were my friend - do you want that thing to eat me?'";
	move player to Dry Plains;

to say AndreEscaped:
	LineBreak;
	say "     Making your way back to the centaurs, you tell Felix about the lizard-creature you saw. He looks flustered when you explain how big it is and says, 'That's pretty big. Since lizards are carnivores, do you think it wants to... eat me?' You do your best to calm Felix down, telling him that no matter what it wants, you won't let anything happen to him. Hopefully you can catch the creature next time.";

to say AndreEscapedAgain:
	LineBreak;
	say "     Making your way back to the centaurs, you tell Felix that you drove off the lizard-creature. For now... hopefully you can catch it for good sometime.";

to say AndreMeeting:
	LineBreak;
	say "     So, what now? Jump him from behind to drive him off ([link]Y[as]y[end link]) (with surprise on your side), or try talking to the big lizard guy ([link]N[as]n[end link])?";
	if Player consents:
		say "     As you attack the lizard guy from behind, he gives a surprised shout and hisses, 'What - who?' Then the pain of your first blow registers and instincts drive him to claw and bite back.";
		challenge "Plains Lizard Male";
		now Libido of Felix is 99;
	else:
		project the Figure of Andre_face_icon;
		say "     Standing behind the horse-sized lizard, you clear your throat. With a shocked expression, he turns his head, then whirls around to fully face you and starts to stutter, 'What? B-but you left - I saw - you were -' His head whips around towards the distant centaurs, then back to you. 'I - er - was just - erm -' While looking pretty ferocious with his claws and teeth, the lizard guy seems very flustered at getting caught by you. Finally, you tell him to take a deep breath and explain what he's doing here.";
		say "     'I'm Andre. I was on a break from college when I changed, and everything around changed.' *he indicates the grassland around you* 'And I was doing my best to survive and I - I saw... Him' *he nods towards the distant centaurs* '...a while ago, and he looked so cute, and I wanted to talk to him - but - but then that behemoth found him and he had to run and I couldn't help against something like that and he lost this.' He shows you a leather pouch with a long carrying leather strap and takes another deep breath. 'I kept it to give it back to him, but then I didn't know if he'd like me and if I should just go to him and...'";
		LineBreak;
		say "     Ah - he's taking a breath... now's your chance to get a word in edgewise. Do you tell him to go away and leave the centaurs in peace ([link]Y[as]y[end link]), or offer to introduce him to Felix, if the young centaur wants to meet him ([link]N[as]n[end link])?";
		if Player consents:
			say "     'Listen, I think it'd be best if you just left, OK? He wouldn't like someone like you who creeped after him anyways.' With that, you shut him up good. You continue, 'Give me that and go,' and take the pouch from his hands, then watch as the lizard runs off with tears in his eyes. Unlikely that he'll be back. With that, you walk back towards the centaurs.";
			now Libido of Felix is 99;
		else:
			say "     'Well, how about this - give me the bag and I'll bring it to Felix, then ask if he wants to meet you. You can't just follow him around forever.' Andre closes mouth on what he wanted to say, then nods with a hopeful look as he hands you the leather pouch. Saying, 'I'll wave if you can come over,' you walk back towards the centaurs.";
			now Libido of Felix is 5;

Section 2 - Felix, the centaur

Table of GameCharacterIDs (continued)
object	name
Felix	"Felix"

Felix is a man.
ScaleValue of Felix is 4. [human+ sized]
Body Weight of Felix is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Felix is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Felix is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Felix is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Felix is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Felix is 4. [length in inches]
Breast Size of Felix is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Felix is 2. [count of nipples]
Asshole Depth of Felix is 14. [inches deep for anal fucking]
Asshole Tightness of Felix is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Felix is 1. [number of cocks]
Cock Girth of Felix is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Felix is 14. [length in inches]
Ball Count of Felix is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Felix is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Felix is 0. [number of cunts]
Cunt Depth of Felix is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Felix is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Felix is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Felix is false.
PlayerRomanced of Felix is false.
PlayerFriended of Felix is false.
PlayerControlled of Felix is false.
PlayerFucked of Felix is false.
OralVirgin of Felix is false.
Virgin of Felix is true.
AnalVirgin of Felix is true.
PenileVirgin of Felix is false.
SexuallyExperienced of Felix is true.
TwistedCapacity of Felix is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Felix is false. [steriles can't knock people up]
MainInfection of Felix is "Centaur Stallion".
Description of Felix is "[FelixDesc]".
Conversation of Felix is { "Mew!" }.
lastFelixTalk is a number that varies. lastFelixTalk is usually 555. [turn-counter for talking delays (humanity restoration)]
The icon of Felix is Figure of Felix_icon.

instead of sniffing Felix:
	say "Felix has a pleasant animalistic smell. It's definitely male, but a bit lighter than a stallion's you'd say. He is still a colt after all.";

to say FelixDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Felix], LIBIDO: [Libido of Felix] <- DEBUG[line break]";
	if (HP of Felix is 0): [starting state]
		say "ERROR-Felix-001A: He should not be around yet anywhere where players can see him.";
	else if (HP of Felix is 100):
		say "ERROR-Felix-100A: He should be removed from the game.";
	else if HP of Felix is 1:
		say "     Felix is a handsome young centaur, his human upper body looking like he's about twenty years of age, the lower equine half is lithe and slender as if made for winning races. Below his belly button, where the horse body starts, he's got a beautiful light brown coat shining in the [if daytimer is day]sunlight[else]moonlight[end if], while his tail and shoulder-length hair is more reddish in hue. Unobtrusively letting your eyes wander to his hind legs, you see the young stallion's large pair of balls and equine sheath. Looking up to Felix face again before he notices you checking him out, he catches you with one of his glowing smiles.";
	else if HP of Felix is 2:
		say "     Felix is a handsome young centaur, his human upper body looking like he's about twenty years of age, the lower equine half is lithe and slender as if made for winning races. Below his belly button, where the horse body starts, he's got a beautiful light brown coat shining in the [if daytimer is day]sunlight[else]moonlight[end if], while his tail and shoulder-length hair is more reddish in hue. Unobtrusively letting your eyes wander to his hind legs, you see the young stallion's large pair of balls and equine sheath.";
		say "     Looking up to Felix face again before he notices you checking him out, you realize that you needn't have worried. He's busy exchanging longing looks with his new boyfriend Andre, almost everything around them forgotten.";

instead of conversing the Felix:
	say "     Felix smiles as you come closer and says, 'Hello, what's up?'";
	say "[FelixTalkMenu]";

to say FelixTalkMenu:
	project the Figure of Felix_icon;
	blank out the whole of table of fucking options;
	say "     [bold type]What do you want to talk with Felix about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk a bit about this and that";
	[]
	if (Libido of Felix is 1 or Libido of Felix is 2):
		choose a blank row in table of fucking options;
		now title entry is "Search for signs of his stalker";
		now sortorder entry is 2;
		now description entry is "Look around in the high grass";
	[]
	if (Libido of Felix is 3):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the stalker";
		now sortorder entry is 3;
		now description entry is "Inquire if he saw something";
	[]
	if (Libido of Felix is 5):
		choose a blank row in table of fucking options;
		now title entry is "Tell him about Andre";
		now sortorder entry is 4;
		now description entry is "Explain who's stalking him and why";
	[]
	if (Libido of Felix is 99):
		choose a blank row in table of fucking options;
		now title entry is "Tell him about his stalker";
		now sortorder entry is 5;
		now description entry is "Explain that you took care of things";
	[]
	if (Libido of Thomas > 0):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the herd";
		now sortorder entry is 6;
		now description entry is "Chat about Thomas centaur herd";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[FelixTalk1]";
				if (nam is "Search for signs of his stalker"):
					say "[FelixTalk2]";
				if (nam is "Ask about the stalker"):
					say "[FelixTalk3]";
				if (nam is "Tell him about Andre"):
					say "[FelixTalk4]";
				if (nam is "Tell him about his stalker"):
					say "[FelixTalk5]";
				if (nam is "Ask about the herd"):
					say "[FelixTalk6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young centaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say FelixTalk1:
	say "     You talk a while with Felix and tell him how things were before the nanite plague, talk about creatures you've seen in the city and everyday survival. It's good to be able to talk to another person and get some things off your chest. In the end, you somehow feel more sane and human than before.";
	if lastFelixTalk - turns > 8:
		SanBoost 5;
		now lastFelixTalk is turns;

to say FelixTalk2:
	say "     You ask Felix where he thought to last have noticed something, then make your way out into the high grass.";
	let bonus be (( Perception of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Perception-Check)[line break]";
	LineBreak;
	increase diceroll by bonus;
	if diceroll > 10:
		say "     Searching around for a while, you find a relatively fresh trail showing footprints of some creature. The marks on the ground look like they were made by something quadrupedal, its hands and feet a bit larger than a human's and armed with claws. Following the trail, you come to a flattened area of grass - looks like the creature lay down here to observe Felix unnoticed from behind the screen of grass. You'd say it's at least as large as a horse, from the size of the flattened imprint...";
		LineBreak;
		say "     Coming back to Felix, you tell him what you found. He's both relieved at not imagining things, as well as a bit frightened as you recount the clawed footmarks and the size of his stalker. 'Hm, it might be gone now... but I bet it'll be back. I'll be extra vigilant from now on and keep an eye out. Maybe you could... do something about it? I will tell you when I think it is close.'";
		now Libido of Felix is 3;
	else:
		say "     Searching around for a while, you find - grass, dry ground, and nothing much else. Seems like Felix was just imagining things after all...";
		now Libido of Felix is 2;

to say FelixTalk3:
	if a random chance of 1 in 2 succeeds:
		say "     You ask Felix if he's seen any signs of the creature stalking him recently, but he just shakes his head.";
	else:
		say "     You ask Felix if he's seen any signs of the creature stalking him recently, and he says, 'I think I saw something moving back there in the grass, next to those rocks.' The young centaur nods to the side in the direction of a pile of rubble in the sea of grass, careful not to be too obvious about it as not to alert his stalker.";
		LineBreak;
		if Libido of Felix is 3:
			say "[Stalker1]";
		else if Libido of Felix is 4:
			say "[Stalker2]";

to say FelixTalk4:
	say "     You walk up to Felix and tell him, 'You can stop worrying; as it turns out, there isn't anything bad stalking you. It's just... a rather insecure lizard guy who really wants to meet you but didn't dare approaching.' The young centaur looks at you, then into the distance, where Andre is now visible over the level of the high grass, giving a small wave as he notices Felix looking. Seems like he's not sure how to react to this situation. You continue, 'Oh, and he had something for you, here.' You pull out the leather pouch with Felix name on it and hand it to him. 'He found it and wanted to give it back.'";
	say "     Opening up the bag, Felix looks through its contents - a book, a small plastic dragon, pens and various knickknacks come to light. 'This is everything I ever owned - my favorite toys and possessions from all the weeks of my childhood. One of my father's mares gave it to me when he threw me out.' He pulls the carrying strap of the pouch over one arm and his head to have it hanging at his side. 'And you say he saved it for me? What's his name anyways?' 'Andre. But how about we just call him over so you can talk with him yourself?' With that, you wave to the big lizard to call him over.";
	LineBreak;
	say "     Andre quickly comes over, spurned on by Felix joining you in waving to him. Then the two young men meet face to face for the first time, and you can almost hear an audible click as their eyes meet and lock. Caught in a seemingly irresistible pull, they walk closer and closer to each other, oblivious to the rest of the world. 'Hello.' 'H-Hi.' 'So I've got you to thank for saving all my stuff?' 'I picked it up for you, but didn't know when, how to -' And that's the end of Andre's explanation as Felix pulls his head to his lips, kissing the horse-sized lizard deeply.";
	LineBreak;
	say "     Watching the making out that follows and seeing the two of them walk a bit away to talk and laugh with each other, it looks like you helped two people destined for each other to find together. It's a very comforting thought that love on first sight and affectionate feelings aren't quite dead in this sex-crazed new world. And who cares if it's between a rather unusual centaur-lizard gay couple - they're obviously quite happy together...";
	now Libido of Felix is 6;
	now HP of Felix is 2;
	move Andre to Dry Plains;

to say FelixTalk5:
	say "     You walk up to Felix and tell him, 'You can stop worrying now - turns out it was some sort of lizard dude stalking you, but I took care of things. He won't be bothering you anymore. Oh, and he had this...' With that, you pull out the leather pouch and hand it to Felix. He looks surprised to see it, saying, 'Hey, I lost this - I thought I'd never see it again. Guess my stalker picked it up, hm?' He gives you a hug, then continues, 'Thank you so much for bringing it back.' Opening up the bag, he looks through its contents - a book, a small plastic dragon, pens and various knickknacks come to light. 'This is everything I ever owned - my favorite toys and possessions from all the weeks of my childhood. One of my father's mares gave it to me when he threw me out.'";
	LineBreak;
	say "     Leaving the young centaur to reminisce about his short time as a kid (from a human perspective), you turn your thoughts back towards everyday survival.";
	now HP of Felix is 99;
	now Libido of Felix is 100;

to say FelixTalk6:
	if HP of Thomas is 100: [lost in the fight with Jill's followers]
		if Libido of Thomas is 10:
			say "     Felix looks rather grim as he says, 'Which herd? Thomas is gone - something terrible must have happened to him when he went to help that centaur mare Jill. I wish he had allowed me to come with him and help, maybe that'd have changed something.'";
		else if Libido of Thomas is 11:
			say "     Felix looks rather grim as he says, 'Which herd? Thomas is gone - something terrible must have happened to him when he went to help that centaur mare Jill. I wish he had allowed me to come with him and help, maybe that'd have changed something. At least Sandy is safe - I brought her to hidden place. With state she's in after everything that happened, having her out here in the open plains was too dangerous.'";
		if Libido of Felix is 6:
			say "     Silent for a moment, Felix eyes wander around and fall upon his reptilian boyfriend, whom he gives a little wave. 'At least Andre is still here with me. I wouldn't know what to do without him.'";
	else:
		if Libido of Thomas is 10:
			say "     Felix looks over to Thomas then back at you. 'Well, with only Thomas and me, it's a pretty small herd. But the quality counts more than the quantity. Thomas is a great guy and a good friend. I love being in his herd.'";
		else if Libido of Thomas is 11:
			say "     Thomas looks out towards the other two centaurs. 'Well, there's only three of us, so it's a pretty small herd. But the quality counts more than the quantity. Thomas is a great guy and a good friend. I love being in his herd. I only hope we can get Sandy to open up a bit. She keeps offering herself to me, as she was trained to do - but I don't want to be my father, just mounting anyone and anything. Even if it's hard to resist, especially when her heat almost wafts though the air.'";
		else if Libido of Thomas is 12:
			say "     Thomas looks out towards the other three centaurs. 'Well, there's only four of us, so it's a pretty small herd. But the quality counts more than the quantity. Thomas is a great guy and a good friend. I love being in his herd. And Jill is nice - I never was allowed to talk to my sisters at all at my father's herd. With her to keep Sandy company, Sandy's gotten a lot better too.'";
		if Libido of Felix is 6:
			say "     Giving a smile and a small wave to Andre, Felix shares a longing look with his friend, then shakes it off not to be rude to you. 'And then there's of course our honorary herd member, even though he's not a centaur. I can't thank you enough for bringing Andre to me.'";

Section 3 - Fucking Felix

Instead of fucking the Felix:
	if (lastfuck of Felix - turns < 6):
		say "     Felix says, 'Sorry I'm still worn out from last time. Give me some space, OK?'";
	else if (Libido of Felix < 6 or Libido of Felix > 90):
		say "     Felix says, 'Thanks for the offer - though I think I'll wait a bit more before doing any of that. I mean - you have my thanks for saving me, but... I want to be together with someone - not just have sex. Someone I care for.'";
	else:
		say "[FelixSexMenu]";

to say FelixSexMenu:
	project the Figure of Felix_icon;
	say "     [bold type]What do you want to do with Felix?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the young centaur blow you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Felix cock";
	now sortorder entry is 2;
	now description entry is "Put Felix long horsecock in your mouth";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put the young centaur's mouth to good use";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger Felix ass";
	now sortorder entry is 4;
	now description entry is "Stimulate the young centaur's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Andre fuck Felix";
	now sortorder entry is 5;
	now description entry is "See the big lizard mount his boyfriend";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Felix fuck Andre";
	now sortorder entry is 6;
	now description entry is "See the big lizard being fucked by his boyfriend";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[FelixSex1]";
				if (nam is "Suck Felix cock"):
					say "[FelixSex2]";
				if (nam is "Have him lick your pussy"):
					say "[FelixSex3]";
				if (nam is "Finger Felix ass"):
					say "[FelixSex4]";
				if (nam is "Watch Andre fuck Felix"):
					say "[FelixSex5]";
				if (nam is "Watch Felix fuck Andre"):
					say "[FelixSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young centaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say FelixSex1: [cock sucked by Felix]
	say "     Walking up to Felix, you run your hands over his muscular chest, then stroke his cheek and lean close to him. You whisper, 'You know what would be hot?' and pull Felix hands down to your crotch. 'You sucking off my cock.' Smiling, Felix pulls out your hard [Cock of Player] cock, pumping it in his hand. 'Anything for you, man. You saved me and brought Andre and me together.'";
	LineBreak;
	say "     With that, he leans over and takes your shaft in his mouth, bobbing up and down on it. Being a man, he knows how to handle a cock and what you need, so the blowjob that follows is pretty amazing. Bringing you to the edge of cumming several times, then allowing you to catch your breath to prolong the experience, he has you highly wound up and aching to cum when he finally goes all out. You're deep in Felix throat with his nose pressed against your crotch when you finally cum, squirting cum right into his stomach. The young centaur pulls back a bit before you're completely done so he can taste your seed, then shows it to you on his tongue and swallows it too.";
	NPCSexAftermath Felix receives "OralCock" from Player;

to say FelixSex2: [sucking Felix cock]
	say "     Walking up to Felix, you run your hands over his muscular chest, then stroke his cheek and lean close to him. You whisper, 'How about a blowjob, big boy?' He grins, then steps back a bit and turns his equine body to show you his long horsecock standing ready and erect for you. Kneeling down, you reach out for it, stroking the warm shaft in a hand while your other one fondles the young centaur's balls.";
	LineBreak;
	say "     In no time at all your taur friend is moaning, then gasping in pleasure as you speed up your stroking him and bring your tongue into play, running it up the side of his cock. Arriving at the tip, you lick over the cock's flared head. Doing your best to fit his cockhead into your mouth, you stroke Felix long cock with both hands. Under your skillful stimulation, it doesn't take long until you hear the centaur shout, 'Ah - I'm gonna cummMM!' quickly followed by his horsecock pulsing in your hand. The first two huge squirts of his cum are enough to fill your mouth, and while you swallow all that, he continues blasting away, further cumshots painting your face and chest in white.";
	say "     As you stand up again and Felix sees you, he grins and helps you wipe the wipe goo off your chest, bringing his hand to his mouth to taste his own sperm. 'Sorry for the mess.'";
	NPCSexAftermath Player receives "OralCock" from Felix;
	infect "Centaur Stallion";

to say FelixSex3: [cunt licked by Felix]
	say "     Walking up to Felix, you run your hands over his muscular chest, then stroke his cheek. Leaning close, you whisper, 'You know you only fuck Andre, but...' and pull Felix hands down to your crotch, '...could you maybe at least help me out with this?' Smiling, Felix peels off your clothes and starts stroking over your nether lips. 'Sure can do. How about we lie down over there.'";
	LineBreak;
	say "     As you lie down, Felix gets into position in front of you, then kneels so he can reach you when leaning forward with his upper body. He fondles you for a moment with his fingers, then spreads your pussy lips and starts to lick. Wow, he's got quite a long and talented tongue, your young centaur friend. Licking leads to soft sucking on your clit, then him pushing his tongue into your vagina. Then he goes back to pushing his fingers inside you, massaging your sensitive inner walls. With Felix masturbating your pussy with enthusiasm, he brings you to the brink of orgasm quickly, then pulls back a bit until you've calmed down before starting up again. Then after you don't know how long in a lustful haze, he takes out all the stops and just keeps going till you come, shouting in satisfaction as your whole body trembles in orgasm.";
	NPCSexAftermath Felix receives "OralPussy" from Player;

to say FelixSex4: [fingering Felix ass]
	say "     You go and give Felix a kiss on the cheek, then whisper in his ear, 'How about you let me play with your ass a bit? I know you only want your boyfriend to fuck you, but we can still have some fun, can't we? Come on, you'll like it.' After a moment's hesitation, he smiles and gives you a nod. Running your hands down over the Felix muscled chest, then along his flank as you walk around his equine body to his read end. Groping the muscled flesh of his ass, you make him moan in anticipation, then raise his reddish tail to reveal his asshole. You lean forward and lick over the young centaur's pucker, reveling in his initial 'Oh? Oh!' and the gasps that follow. Running your tongue up and down his crack, then poking his hole with it, you make Felix pant and moan and soon you hear him say, 'This feels amazing!'";
	LineBreak;
	say "     Oh, but that's only the start of what you have planned for him... you bring your hand to his hole and start to massage it. After starting slow with one and two fingers, you get him to loosen up and soon are able to slip three, then four fingers in - followed by your whole hand. Pushing deeper into the centaur's body, you stroke his inner passage, grinning at the lust-filled panting and moaning you create with that. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful gasps it makes Felix do every time you stroke over it. Concentrating on that, it doesn't take much longer until the centaur orgasms, his sphincter gripping your arm tightly as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle.";
	infect "Centaur Stallion";

to say FelixSex5: [Andre fucks Felix]
	say "     You go and give Felix a kiss on the cheek, then whisper in his ear, 'How about you give Andre a good time? Just imagine feeling him on top of you, his hands holding on to your flanks as he slides into you from behind... I'd love watching the two of you together.' Felix smiles as his looks move over to his reptilian boyfriend, and you see his horsecock slide out of its sheath and harden in anticipation. With a little grin and a nod to you, the young centaur trots over to Andre, pulling him in for a hungry kiss.";
	say "     Telling each other sweet nothings, they make out for a bit, then Felix turns around and presents his backside to his lover. He flirts his tail through the air invitingly, then says, 'Mount up, lizard-boy - I'm waiting.' Andre eagerly rears up, his front hands taking hold of the centaur's horse-body while he licks over Felix back with his long tongue. Then he reaches down, aligning his rock-hard shaft with Felix asshole and slowly slides in, both of them panting and moaning as he penetrates. Soon, he's in all the way and stops like that for a moment, giving Felix time to adjust to his shaft and stretching his long neck to give the centaur a kiss over his shoulder. They tongue-wrestle for a moment, then Felix moans, 'Fuck me, lover - I need it,' and Andre starts grinding his hips against his butt.";
	WaitLineBreak;
	say "     Watching your two friends interspecies coupling, you can't help yourself from drifting closer and closer to get a better look. Soon you're standing right next to them, close enough to feel the heat of their bodies. Felix gives you a smile, unashamedly moaning and panting as his boyfriend thrusts into him from behind. His fully erect horsecock dangles under him, showing his arousal with a string of precum dribbling down onto the ground. One thing to be said for people born after the nanite infection spread - they certainly don't have any sexual hangups.";
	say "     From your ringside position, you observe the arousal of your two friends mount quickly, Andre's thrusts getting faster and so urgent that he pushes the centaur a few steps forward before Felix puts down his hooves the right way to hold fast against him. Before much longer, the big lizard hisses, 'I'm really close, baby. Where do you...' and Felix reaches back to stroke his face and neck, interrupting with a moaned, 'Just come inside me, I want to feel you.' With nothing more holding Andre back, he really goes to town on Felix ass, slamming forward against his muscled equine rump. The stimulation of the pointy and ridged reptilian shaft rubbing against his insides finally drives the young centaur over the edge, giving a lustful shout as he starts cumming, long blasts of his seed squirting out of the head of his cock and onto the dry ground. With his boyfriend's muscles flexing and quivering around his thrusting shaft, Andre isn't far behind. He roars and buries his cock all the way inside Felix ass as he orgasms, shooting string after string of his seed inside the centaur.";
	say "     Still on top and inside his friend, Andre licks Felix sweaty back, then stretches his neck a bit so he can reach the centaur's nipples with his long tongue. Felix gives a fresh moan at the sudden stimulation, then pulls his reptilian lover's head up to his, kissing him deeply. They make out a bit and tell each other how much they love another before the big lizard dismounts, pulling his softening shaft out of Felix cum-dripping hole. You leave the two boys to clean up and spend some more time together, returning your thoughts to matters of everyday survival.";
	NPCSexAftermath Felix receives "AssFuck" from Andre;

to say FelixSex6: [Felix fucks Andre]
	say "     You go and give Felix a kiss on the cheek, then whisper in his ear, 'How about you give Andre a good time? Just imagine sliding into his tight ass, feeling your cock inside him... I'd love watching the two of you together.' Felix smiles as his looks move over to his reptilian boyfriend, and you see his horsecock slide out of its sheath and harden in anticipation. With a little grin and a nod to you, the young centaur trots over to Andre, pulling him in for a hungry kiss.";
	say "     Telling each other sweet nothings, they make out for a bit, then Andre turns around and presents his backside to his lover. Not one to keep him waiting, Felix rears up and mounts the big lizard from behind, his flares horsecock expertly finding Andre's ready opening beneath his long tail. With a lust-filled gasp from two voices, the centaur thrusts forward, burying his manhood deep in his boyfriend's ass. They rest like that for a moment, giving Andre the time to get used to the equine shaft, then the male lizard moans, 'Fuck me, baby,' and Felix starts thrusting in and out.";
	WaitLineBreak;
	say "     Watching your two friends interspecies coupling, you can't help yourself from drifting closer and closer to get a better look. Soon you're standing right next to them, close enough to feel the heat of their bodies. Felix gives you a smile from up on top of Andre, unashamedly fucking his friend and even doing some demonstrative deep thrusts to show off a bit. That's one thing to be said for people born after the nanite infection spread - they certainly don't have any sexual hangups.";
	say "     From your ringside position, you observe the arousal of your two friends mount quickly, Felix thrusts getting faster and more urgent and a string of precum dribbling from Andre's rock hard cock. Before much longer, the young centaur moans, 'I'm close, I'm gonna...' as he slams forward one last time, burying his whole horsecock inside the big lizard's ass. As his balls start twitching and pulsing with burst after burst of cum they're unloading in the ass of his boyfriend, Andre is driven over the edge too. With a lust-filled croon, his whole body tenses as long strings of his seed splash all over the ground under him. Still on top and inside his friend, Felix leans forward to stroke and hug Andre. The big lizard's neck is long and flexible enough that they can even kiss and say the love each other before the centaur dismounts. You leave the two boys to catch their breath and spend some more time together, returning your thoughts to matters of everyday survival.";
	NPCSexAftermath Andre receives "AssFuck" from Felix;

Section 4 - Andre, the lizard

Table of GameCharacterIDs (continued)
object	name
Andre	"Andre"

Andre is a man.
ScaleValue of Andre is 4. [human+ sized]
Body Weight of Andre is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Andre is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Andre is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Andre is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Andre is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Andre is 4. [length in inches]
Breast Size of Andre is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Andre is 2. [count of nipples]
Asshole Depth of Andre is 16. [inches deep for anal fucking]
Asshole Tightness of Andre is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Andre is 1. [number of cocks]
Cock Girth of Andre is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Andre is 16. [length in inches]
Ball Count of Andre is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Andre is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Andre is 0. [number of cunts]
Cunt Depth of Andre is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Andre is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Andre is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Andre is false.
PlayerRomanced of Andre is false.
PlayerFriended of Andre is false.
PlayerControlled of Andre is false.
PlayerFucked of Andre is false.
OralVirgin of Andre is false.
Virgin of Andre is true.
AnalVirgin of Andre is true.
PenileVirgin of Andre is false.
SexuallyExperienced of Andre is true.
TwistedCapacity of Andre is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Andre is false. [steriles can't knock people up]
MainInfection of Andre is "Plains Lizard Male".
Description of Andre is "[AndreDesc]".
Conversation of Andre is { "Mew!" }.
lastAndreTalk is a number that varies. lastAndreTalk is usually 555.	     [turn-counter for talking delays (humanity restoration)]
The icon of Andre is Figure of Andre_icon.

instead of sniffing Andre:
	say "Andre has a pleasant animalistic smell. It's definitely male, with a kind of spicy undertone.";

to say AndreDesc:
	say "     Andre is an about horse-sized lizard, strong and agile. He is quadrupedal and has a long and flexible tail and neck, with the latter ending in an elongated reptilian head with sharp teeth. On top of his head is a spined crest, giving him a dashing appearance. With his sand-colored scales glinting in the [if daytimer is day]sunlight[else]moonlight[end if], it looks like he was made to prowl these dry plains. You wonder if the nanites would adjust his coloring to a greener environment or other areas. Unobtrusively letting your eyes wander to his hind legs, you catch a glimpse of a small slit between his legs. He doesn't have any external balls or anything, but you remember that there's a quite impressive cock hidden inside that sheath.";
	say "     Looking up to Andre face again before he notices you checking him out, you realize that you needn't have worried. He's busy exchanging longing looks with his new boyfriend Felix, almost everything around them forgotten.";

instead of conversing the Andre:
	say "     Andre gives you a tooth-filled (but friendly) smile as you come closer and says, 'Hey there, what's up?'";
	say "[AndreTalkMenu]";

to say AndreTalkMenu:
	project the Figure of Andre_face_icon;
	say "     [bold type]What do you want to talk with Andre about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk a bit about this and that.";
	[
	if (Libido of Thomas > 0):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the herd";
		now sortorder entry is 5;
		now description entry is "Chat about Thomas centaur herd.";
	]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[AndreTalk1]";
				if (nam is "Ask about the centaur herd"):
					say "[AndreTalk5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the plains lizard, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AndreTalk1:
	say "     You talk a while with Andre about how things were for the two of you before the nanite plague, talk about creatures you've seen in the city and everyday survival. It's good to be able to talk to another person and get some things off your chest. In the end, you somehow feel more sane and human than before.";
	if lastAndreTalk - turns > 8:
		SanBoost 5;
		now lastAndreTalk is turns;

to say AndreTalk5:
	say "     <ask about the rest of the herd>";


to say Plains Lizard wins:
	say "     Standing over you with raised claws, the lizard guy suddenly looks at his claw, then you, and shakes his head. An expression of shame and embarrassment comes to his face and he stops attacking you. 'Err - sorry about that. I - I just couldn't stop when I was... I should just go.' With a last, longing look towards the distant centaurs, he drops something beside you and dashes off through the high grass, away from you and them.";
	say "     After catching your breath, you stand up and have a look what the lizard guy left - it's a leather pouch, with Felix name written on it. You take it with you. Might be best to ask the young centaur about it.";

to say Plains Lizard loses:
	say "     After having taken quite a few of your blows, the big lizard turns and flees, dashing off quickly through the high grass. With the beating you've given him, you don't think he'll be back anytime soon. Oh, and seems like he dropped something - a leather pouch, with Felix name written on it. You take it with you. Might be best to ask the young centaur about it.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Plains Lizard Male"	"[PrepCombat_Plains Lizard Male]"

to say PrepCombat_Plains Lizard Male:
	say "";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Plains Lizard";
	add "Plains Lizard Male" to infections of ReptileList;
	add "Plains Lizard Male" to infections of NatureList;
	add "Plains Lizard Male" to infections of MaleList;
	add "Plains Lizard Male" to infections of InternalCockList;
	add "Plains Lizard Male" to infections of InternalBallsList;
	add "Plains Lizard Male" to infections of TaperedCockList;
	add "Plains Lizard Male" to infections of QuadrupedalList;
	add "Plains Lizard Male" to infections of TailList;
	add "Plains Lizard Male" to infections of OviImpregnatorList;
	now Name entry is "Plains Lizard Male";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Andre";
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He attacks you with a slash of his claws.[or]Ouch - you manage to pull away from a bite, but still lose some skin to sharp teeth scraping over your skin.[at random]";
	now defeated entry is "[Plains Lizard loses]";
	now victory entry is "[Plains Lizard wins]";
	now desc entry is " ";
	now face entry is "elongated and reptilian, with a tooth-filled mouth and only slits on your snout as a nose. A spined crest runs over the top of your head and down the long neck, ending at the shoulders and giving you a dashing appearance";
	now body entry is "that of a very large lizard, at least as big as a horse. It's muscular, but sleek, promising agility and speed on your four legs";
	now skin entry is "scaled, sand-colored"; [ format as "Your body is covered in (your text) skin"]
	now tail entry is "A long and flexible tail stands out behind you, perfect to keep your balance."; [ write a whole Sentence or leave blank. ]
	now cock entry is "ridged, reptilian"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into the elongated shape of a lizard, complete with snout and tooth-filled maw. Instead of hair, a spined crest forms on the top of your head, running down the back of your neck and ending between your shoulders"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a large lizard's, a quadrupedal form that promises strength as well as speed with its sleek lines"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "small scales form to cover all of it, giving you a sand-colored, reptilian skin"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long flexible tail grows out of your tailbone. After a few moments, it stops feeling strange and you start using the tail for balance as if you had been born with it"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes more reptilian, a sheath forming inside your body to allow it to completely vanish inside as long as its soft"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 40;
	now lev entry is 6;
	now wdam entry is 8;
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 16;
	now Ball Size entry is 2; [ Size of balls ]
	now Nipple Count entry is 0; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 40; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "plains lizard male milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "sleek"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "reptilian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 5 - Fucking Andre

Instead of fucking the Andre:
	if (lastfuck of Andre - turns < 6):
		say "     Andre says, 'Phew, I need a break for a bit. Another time, OK?'";
	else:
		say "[AndreSexMenu]";

to say AndreSexMenu:
	project the Figure of Andre_icon;
	say "     [bold type]What do you want to do with Andre?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the lizard blow you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Andre's cock";
	now sortorder entry is 2;
	now description entry is "Put Andre's cock in your mouth";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put the lizard's mouth to good use";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger Andre's ass";
	now sortorder entry is 4;
	now description entry is "Stimulate the lizard guy's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Andre fuck Felix";
	now sortorder entry is 5;
	now description entry is "See the big lizard mount his boyfriend";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Felix fuck Andre";
	now sortorder entry is 6;
	now description entry is "See the big lizard being fucked by his boyfriend";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[AndreSex1]";
				if (nam is "Suck Andre's cock"):
					say "[AndreSex2]";
				if (nam is "Have him lick your pussy"):
					say "[AndreSex3]";
				if (nam is "Finger Andre's ass"):
					say "[AndreSex4]";
				if (nam is "Watch Andre fuck Felix"):
					say "[FelixSex5]";
				if (nam is "Watch Felix fuck Andre"):
					say "[FelixSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the plains lizard, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AndreSex1: [cock sucked by Andre]
	say "     Walking up to Andre, you run a hand over his long scaled neck, pulling his head towards you a bit so you can whisper in his ear. 'I'm really horny right now. Could you do me a favor and blow me off?' Looking at you, then your crotch, the big lizard replies, 'S-sure. I totally owe you for bringing Felix and me together.'";
	LineBreak;
	say "     With that, he uses his clawed hands to carefully peel off any clothes you might be wearing, then moves his elongated reptilian snout to your crotch. As he opens his mouth and all those sharp teeth inside come into view, the thought that this was a bad idea shoots through your head for a moment, then quickly is pushes aside as Andre wraps his very long forked tongue around your cock. With him tonguing your shaft, simultaneously licking and squeezing it, you're treated to a pretty unique oral sex experience. Andre's talented stimulation drives your arousal through the roof quickly, and before too long, you orgasm, shooting long strings of cum into the big lizard's mouth.";
	NPCSexAftermath Andre receives "OralCock" from Player;

to say AndreSex2: [sucking Andre cock]
	say "     Walking up to Andre, you run a hand over his long scaled neck, then along his body until you come to his hind legs. Smiling at the big lizard as he cranes his neck to see what you're doing, you move your hand lower towards his crotch and find the slit-like opening of his internal sheath. Rubbing it and then the quickly hardening cock emerging from it, you say, 'Just relax, I want a taste of this.' He just moans as an answer.";
	LineBreak;
	say "     Getting down on the ground under the horse-sized lizard, you stoke his pointy and ridged erection, then lick over its underside, making Andre give a lustful hiss. You put your lips to the tip of his shaft and take it in your mouth, moving on to bobbing up and down on it after a while. There's quite a bit of cock your reptilian friend has, and when you reach the end of what you can take in, you put your hands to the rest of his shaft and stroke it in rhythm with your sucking. Getting expertly blown and jerked at the same time, it doesn't take too long until Andre's pants and hisses come quicker and more urgently, building up to a shouted 'I'm cumming!' A spicy taste fills your mouth as the first blast of his load paints your tonsils white and you quickly swallow it all to be ready for the next shot. Taking spurt after spurt of the tasty cum, you just keep suckling on Andre's cock until you got the very last bit of his load.";
	NPCSexAftermath Player receives "OralCock" from Andre;
	infect "Plains Lizard Male";

to say AndreSex3: [cunt licked by Andre]
	say "     Walking up to Andre, you run a hand over his long scaled neck, pulling his head towards you a bit so you can whisper in his ear. 'I'm really horny right now. Could you do me a favor and eat me out?' Looking at you, then your crotch, the big lizard replies, 'S-sure. I totally owe you for bringing Felix and me together.'";
	LineBreak;
	say "     With that, he uses his clawed hands to carefully peel off any clothes you might be wearing, then moves his elongated reptilian snout to your crotch. As he opens his mouth and all those sharp teeth inside come into view, the thought that this was a bad idea shoots through your head for a moment, then quickly is pushes aside as Andre's long forked tongue starts licking your cunt. He's got an amazing dexterity with it, making you moan as he concentrates on your clit, then pushes it in between your pussy lips, wiggling around inside your vagina. With the two ends of his tongue rubbing different spots, it's almost as if two people are giving you attention simultaneously, resulting in a rather unique oral sex experience. Andre's talented stimulation drives your arousal through the roof quickly, and before too long, you orgasm, femcum dripping out of your pussy to be licked up by the big lizard.";
	NPCSexAftermath Andre receives "OralPussy" from Player;

to say AndreSex4: [fingering Andre ass]
	say "     Walking up to Andre, you run a hand over his long scaled neck, then along his body until you come to his hind legs. Smiling at the big lizard as he cranes his neck to see what you're doing, you move your hand further back under his tail and find the his pucker. Rubbing it and hearing the surprised hiss he makes, you say, 'Relax, I just want to play a bit with your ass. You'll like it - and you want to train your muscles back here for Felix, don't you?' 'Err - of course,' he answers, and you can see his opening relax a bit.";
	LineBreak;
	say "     You bring your hand to his hole and start to massage it, rubbing it and the surprisingly sensitive underside of his long tail. Starting slow, you push one, then two fingers inside his ass, working them in and out a bit until he relaxes his muscles even more and you can add another finger. After a while, you got him loosened up enough that you can slip four fingers in - followed by your whole hand. Pushing deeper into the big lizard's body, you stroke his inner passage, grinning at the lust-filled hisses and moaning you create with that. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful gasps it makes Andre do every time you stroke over it. Concentrating on that, it doesn't take much longer until the big lizard orgasms, his sphincter gripping your arm tightly as spurt after spurt of cum blasts from his ridged cock and hits the ground.";
	NPCSexAftermath Andre receives "Stroking" from Player;

Section 6 - Endings

[see Thomas file for Felix+Thomas, Felix+Andre to be written]

Felix ends here.
