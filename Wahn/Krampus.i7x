Version 1 of Krampus by Wahn begins here.
[Version 1 - New NPC]

[ HP of Krampus                                   ]
[  0: never met                                   ]
[  1: introduction done                           ]

[ lust of Krampus                                 ]
[  0: never had sex before                        ]
[  1: had sex before                              ]

Section 1 - Events

after going to Krampus's Cave while (HP of Krampus is 0): [introduction]
	if debugactive is 1:
		say "DEBUG -> Krampus Introduction; HP of Krampus: [HP of Krampus] <- DEBUG[line break]";
	say "     Having stepped into the cave, you are still taking in everything around you when the place's occupant rises from where he was lying on the furs. He is a very large anthro goat, more than seven feet tall, with broad shoulders and rippling muscles under his somewhat shaggy, black fur. As he steps forward on cloven hooves, the creature clinks and rattles a little; bolted around his wrists and ankles are heavy, pitch-black iron manacles, several links of broken chains still dangling from their fastenings. 'What brings you to Krampus's Cave?' he demands in a deep voice, his eyes filling with the low glow of an inner fire as he examines you closely, a lewd grin spreading over his muzzle. 'Are there so many naughty ones now that you just wander into my home? No need for the sack anymore, eh?'";
	say "     Krampus glances aside at the huge, red sack near his bedding, leaning down for a second to grope a rounded curve in the material. It must have been the outline of a buttock or breast, as the sack moves a little in response, accompanied by the aroused moan of whoever and whatever is in it. A deep chuckle fills the broad chest of the naked goat-demon, and you can see his thick, black cock throb with anticipation. Looking back to you, he suddenly takes a step closer and bellows, 'Well then? Speak!' A little intimidated by his imposing presence, you swallow to gather your courage, then introduce yourself [if Player is not defaultnamed]as [name of Player] [end if]and quickly explain that you are simply exploring. 'Hah,' Krampus replies in a taunting tone. 'You may think that, but usually, only certain people find their way here. Those who really [italic type]deserve[roman type] what they are going to get. We will see which one you are, pet!'";
	now HP of Krampus is 1;

Section 2 - Location

Table of GameRoomIDs (continued)
Object	Name
Krampus's Cave	"Krampus's Cave"

Krampus's Cave is a room.
Krampus's Cave is north of Christmas Village.
Description of Krampus's Cave is "[KrampusCaveDesc]".

to say KrampusCaveDesc:
	say "     You find yourself in what seems to be a natural cave with rough, rocky walls. The entrance tunnel curves a little bit and leads downwards, separating the inside from the bright, snow-covered Christmas Village. It feels as if you stepped into another world entirely when you came in - a place much more primal and ancient, yet still somehow connected to the laughter and joy you distantly hear from the outside. A softly crackling fire fills a niche in the far wall, illuminating the cave in a flickering, orange glow that makes shadows dance. You can see a few shimmering, red-and-silver Christmas baubles hanging off of the walls on red ribbons, among more grim decorations like chains and manacles, a large, coiled-up whip, and other such gear. A huge, red sack lies on the ground next to a heap of soft furs, piled on top of each other to serve as the goat-demon's bed. With the flickering lighting, it almost appears like something inside the sack is moving from time to time, but that's surely just your imagination.";

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Krampus	"Krampus"

Krampus is a man.
Krampus is in Krampus's Cave.
ScaleValue of Krampus is 4. [human sized]
Body Weight of Krampus is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Krampus is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Krampus is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Krampus is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Krampus is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Krampus is 7. [length in inches]
Breast Size of Krampus is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Krampus is 2. [count of nipples]
Asshole Depth of Krampus is 10. [inches deep for anal fucking]
Asshole Tightness of Krampus is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Krampus is 1. [number of cocks]
Cock Girth of Krampus is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Krampus is 14. [length in inches]
Ball Count of Krampus is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Krampus is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Krampus is 0. [number of cunts]
Cunt Depth of Krampus is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Krampus is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Krampus is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Krampus is false.
PlayerRomanced of Krampus is false.
PlayerFriended of Krampus is false.
PlayerControlled of Krampus is false.
PlayerFucked of Krampus is false.
OralVirgin of Krampus is false.
Virgin of Krampus is true.
AnalVirgin of Krampus is true.
PenileVirgin of Krampus is false.
SexuallyExperienced of Krampus is true.
TwistedCapacity of Krampus is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Krampus is false. [steriles can't knock people up]
MainInfection of Krampus is "Goat-Demon".
Description of Krampus is "[KrampusDesc]".
Conversation of Krampus is { "<This is nothing but a Goat-Demon!>" }.
The scent of Krampus is "[KrampusScent]";

to say KrampusDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Krampus: [HP of Krampus] <- DEBUG[line break]";
	project the Figure of Krampus_soft_icon;
	say "     The creature before you is bestial and at least seven feet tall. Large and broad-shouldered, with muscles rippling under the slightly shaggy, black fur covering his form, he appears to be a powerful brute of an anthro goat at first glance, but the longer you look, the more other details can be made out in the flickering light of the fireplace. His eyes seem to be filled with their own fiery glow, flaring up a little brighter as he examines you in turn, and a broad grin spreads over his muzzle. This reveals teeth that are far from the ones of a placid herbivore, complete with a full set of long and vicious fangs. His muscular arms and legs bear manacles of black iron on the wrists and ankles, the ends of broken chains dangling from them and clinking a little as he moves.";
	say "     'Can't help but feast your eyes upon me, can you?' the goat-demon says in a deep, alluring voice, reaching out and taking hold of your jaw with strong, clawed fingers. He stares into your eyes for a second, grinning broadly, then repositions his hand to clamp around the back of your head, a light pressure urging you to look down to his crotch. The fingers of his other hand are wrapped around the thick, black shaft standing erect below a shaggy bush of pubic fur, slowly stroking it and making you watch as a drop of precum forms at the tip. Wiping the pre off with a finger, he smears it on your cheek, then leans down to lick the other side of your face with a long, pointy tongue before whispering into your ear, 'Be naughty, I dare you. Then you'll get to know me far more closely than simply looking.'";

to say KrampusScent:
	say "     Stepping up, you sniff the black-furred demon: Krampus smells slightly of wood and smoke, complementing the masculine aroma of the mighty, furred beast that he is.";
	if lust of Krampus > 0: [had sex before]
		say "     The broken chain dangling from his manacles rattles a little as the goat-demon reacts to you stepping into his comfort zone, suddenly reaching out to grab the back of your head and pull your face against his firm abs and pecs. You can't help but huff deep breaths of his scent while being man-handled like this, really filling your nose with the essence of this muscled brute. Chuckling, he eventually pulls you back, leaning down to lick your cheek with a long, pointy tongue. 'Did you enjoy that, little pet?' he asks in an amused tone before letting you go.";

instead of conversing the Krampus:
	project the Figure of Krampus_soft_icon;
	say "What do you want to talk with Krampus about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the goat-demon about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Santa Claws";
	now sortorder entry is 2;
	now description entry is "Ask the goat-demon about his view of Santa";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mall";
	now sortorder entry is 3;
	now description entry is "Talk about the mall";
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
				if nam is "Himself":
					say "[KrampusTalk1]";
				if nam is "Santa Claws":
					say "[KrampusTalk2]";
				if nam is "Mall":
					say "[KrampusTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the goat-demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say KrampusTalk1: [ask about him]
	say "     The large goat-demon raises his upper lip and lets out a contemptuous huff as you ask who and what he is. Shaking his horned head, he growls in a deep voice, 'How typical. I have to say that I'm not surprised at all about the state you people have left the place in.' Krampus waves his black-furred arm towards the entrance of the cave, the remaining segments of chain on his manacle clinking against one another. It is clear that his gesture doesn't refer to the Christmas Village, or even the whole city, but encompasses all human achievements. Leaning forward to push his face right up to yours, he stares into your eyes, his own burning with an inner fire. 'Always wanting more, and even getting it, while at the same time pushing any thought of [italic type]consequences[roman type] out of your little minds.'";
	say "     You can feel Krampus's warm breath upon your face as he growls, then stands up straight and stretches to his full height. The goat-demon rolls his shoulders and makes a fist, hitting his open palm with a clink from the chains on his manacles. His following words are barked out in a deep, merciless tone, cracking his knuckles as he speaks, 'I am Retribution, Discipline, Punishment, and Sentence. [italic type]He[roman type] may reward the righteous and virtuous, but those who are not, are MINE!' Krampus smiles after that last warning word, showing his fangs and running his pointy tongue over his lips with anticipation. 'There is only supposed to be one day of reckoning every year, but with all of you trying so hard to [italic type]forget[roman type] me, I think you all deserve a lot more attention this time around!'";

to say KrampusTalk2: [ask about Santa Claws]
	say "     A smile spreads over the goat-demon's face as you pose your question, and he relaxes a little, leaning back against a relatively even area of cave wall. He then nods towards the entrance of the cave. 'Oh, you wanna know about him? Nice enough fellow. We hang out together sometimes. Shared a few elves, if you know what I mean.' The way Krampus holds his hands and thrusts his hips into the air leaves little doubt about the activities mentioned. He rubs his furry chin thoughtfully and gives a shrug. 'He has his task, and I have mine. Don't begrudge him, personally, though I have to say that I'd prefer if he was just a little less [italic type]gullible[roman type]. 'Oh, of course, Santa, I was a good, good boy.' Hah. Half of those little brats deserve a good thrashing. Not enough to go in the sack, but they just get worse over time if they aren't reined in at some point.'";
	say "     Glancing over at the huge, red sack on the floor, Krampus's eyebrows draw together as he sees movement inside, then a fur-covered hand emerging from the top, feeling around as if searching for a good spot to hold on to and pull the rest of the person out. A low growl rolls through Krampus's broad chest, followed by him calling over to the sack, 'Are you volunteering to be [italic type]next[roman type]? Can't wait to get yours, eh?' The hand is instantly withdrawn back into the sack, and you can hear what seems to be a whimper. 'Good choice,' Krampus adds with a laugh, then turns back to you. 'So yeah, he's a bit too much of a softie, but a good guy overall,' comes the final evaluation of Santa from the black-furred beast.";

to say KrampusTalk3: [ask about the Mall]
	say "     The goat-demon lets out a derisive chuckle and glances over to the cave entrance. 'Hah, a palace of greed and consumerism, that's what it is. How surprising that a place like this would become such a haven for such a sorry bunch. And they've even been behaving themselves - working together, huddled in a group against the chaos outside.' Adjusting a manacle on one of his wrists, the big black goat shrugs. 'The folks in the mall have been chastised enough for the moment in my eyes. I roam the streets to fill my sack, because that is where the most deserving ones can be found these days. Not the feral beasts, you understand, but those who are still sane enough to know that they are doing wrong and yet still do so without any hesitation.'";

instead of fucking the Krampus:
	if (lastfuck of Krampus - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     The goat-demon grabs you by the jaw, bending your head so that he can look into your eyes as he chuckles. 'Trying to wear me out, eh? Well, you're shit out of luck right now. My next few loads are reserved for some very 'deserving' people in the sack. Come back later.'";
	else: [ready for sex]
		say "     As you walk up to Krampus and make him the offer of sex, he chuckles loudly and moves a hand to stroke his big, black cock. 'Feeling guilty about something, eh? Normally, folks run away when I come for them, but apparently, some of you people are just suckers for punishment. Fine by me - I'll give you what you really deserve!'";
		wait for any key;
		say "[KrampusSexMenu]";

to say KrampusSexMenu:
	project the Figure of Krampus_hard_icon;
	LineBreak;
	say "     What do you ask for Krampus to do to you?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get face-fucked";
	now sortorder entry is 1;
	now description entry is "Have your mouth stuffed by the dominant goat-demon's thick black shaft";
	[
	if Player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Krampus's shaft in your pussy";
		now sortorder entry is 2;
		now description entry is "Offer sex to the goat-demon";
	]
	choose a blank row in table of fucking options;
	now title entry is "Take Krampus's shaft in your ass";
	now sortorder entry is 3;
	now description entry is "Offer sex to the goat-demon";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him you want to be tied up";
	now sortorder entry is 4;
	now description entry is "Give yourself to the goat-demon, letting him pick what kind of bondage to put you into";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Submit to being punished by Krampus";
	now sortorder entry is 5;
	now description entry is "Give yourself to the goat-demon, enduring his choice in punishment";
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
				setmonster "Goat-Demon";
				if (nam is "Get face-fucked"):
					say "[KrampusSex1]";
				if (nam is "Take Krampus's shaft in your pussy"):
					say "[KrampusSex2]";
				if (nam is "Take Krampus's shaft in your ass"):
					say "[KrampusSex3]";
				if (nam is "Tell him you want to be tied up"):
					say "[KrampusBondageStart]";
				if (nam is "Submit to being punished by Krampus"):
					say "[KrampusPunishStart]";
				if lust of Krampus is 0: [never had sex before]
					now lust of Krampus is 1; [had sex before]
				now lastfuck of Krampus is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the goat-demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KrampusSex1: [oral on Krampus]
	say "     A pleased rumble emanates from the demonic goat's chest as you suggest oral sex to him, and he grabs you by the shoulders with both of his strong hands. 'Just what I had in mind,' he teases with a deep-voiced laugh before pulling you in roughly against his coal-black fur, the throbbing length of his prick pressing up against your fore. Links of broken chain clink against each other as the large beast grabs the back of your head, bending it backwards so that he can use his long, pointy tongue to lick possessively from the base of your neck, up over your cheek, then all the way to your left earlobe, leaving a trail of hot saliva in his wake. 'You are mine now,' he whispers into your ear in a husky tone that sends shivers of submissive pleasure running down your spine.";
	say "     Krampus holds your head still as he presses his muzzle to your mouth, exploring it with that bestial tongue in a deep, demanding kiss. In the meantime, his spare hand sets to work, pulling all of that unnecessary gear and clothing from your form, impatiently wrenching it aside to lay you bare. After a few moments of sharing your breath with this powerful beast during his hungry kisses, Krampus pulls your head back from his and slides the remaining garments off of your upper body, leaving you standing naked in his cave. The large anthro goat takes two steps backwards to allow the firelight to play over your body, heavy hooves making the ground tremble just a little while his chain links clink against each other. A broad grin spreads over his muzzle, showing the sharp fangs that he calls his own.";
	WaitLineBreak;
	say "     'Look at you,' the demon goat says in a deep voice full of lust and righteous fervor, 'Stripping away everything - garments, fame, power, self-illusions, and excuses - and what is left in the end? The sum of a person's choices, and the consequences thereof. Like your own, to search me out.' A certain air of amusement accompanies his last words, suggesting that what you are about to experience is Krampus in a slightly more playful mood than what he'd usually display for those he has to catch and drag off in his sack. The large and throbbing black shaft between his legs leaves little doubt that you'll be harshly used, but in a good way, making you tremble with anticipation. And you don't have to wait long for the big, black goat to come for you, throwing you over one shoulder to carry you off to the countless furs that serve as his bedding.";
	say "     You find yourself lowered onto the warm furs, lying naked before the powerful beast you have given yourself to, and Krampus is quick to straddle your supine form, his thick, furry thighs brushing against the sides of your chest. He grins down at you and runs his tongue over his lips, then slowly pushes his hips forward, letting his ebony cock dance before your eyes while the weight of his furry sack settles on your breastbone. 'You like that, don't you, my little slut?' Krampus all but purrs. Your infernal lover takes hold of his prick to drag the pre-dribbling glans across your chin, then the sides of your cheeks, slathering the heady fluid across your [Skin of Player] flesh. Moaning at this treatment, you give him an eager, little nod that makes the demon smirk with amusement.";
	WaitLineBreak;
	say "     Krampus rubs his erection against your face for a little while longer, switching it up once or twice by grinding the full orbs of his balls against you, making you take deep breaths of his intoxicating masculine scent. Suddenly, he grasps your head firmly with his left hand, pulling it upwards a little as he starts to run the tip of his uncut shaft over your lips. The cum-slit of Krampus's cock leaks beads of precum, moistening your lips and tempting you to lick it up. As you do so, savoring the nutty taste, the demon lets out a short laugh and tugs sharply at your hair to underline the command of, 'Go on then. Lick it!' Now opening your mouth fully, you stick your tongue right out to lap over his dickhead, then explore a little. You lick around the rim of his head once before returning closer to the tip and feeling over his foreskin with your tongue, your eager ministrations rewarded with more of his tasty caprine pre.";
	say "     A lusty grunt goes through the large anthro goat as you push against his dickhead to slurp up more of his delicious precum, enjoying the savory flavor that suffuses your tingling palate. Driving your tongue-tip beneath his foreskin to chase after more, you're met with a bit more of a gamey, but still quite pleasant, flavor there, making your mind cloud over under the spell of his pungent aroma. 'Someone is really good, despite being on the naughty list,' comes an aroused groan from Krampus. Without warning, the demon goat decides that he wants more, pushing his length into your mouth with a shallow thrust. He humps your face slowly at first, leaving you more opportunities to play your tongue over his cock and dart it under his foreskin to lick along those scarcely tended nerves. All of this builds the dominant goat's arousal fairly quickly, and it doesn't take long before his thrusts begins to drive deeper and deeper, soon pushing against the back of your throat and forcing you to relax your muscles around the bulging impression of his broad, black dick.";
	WaitLineBreak;
	say "     Stretched out on the warm furs and pinned underneath Krampus's towering form, you're now forced to experience the full power of this beastly male. He holds your head tight in his grasp while ramming his thick, demonic dick down your throat, throbbing from within and holding it there for a second, before withdrawing and making another quick thrust. The black goat's heavy balls swing back and forth as he takes you, brushing against your breastbone before slapping your chin again and again. Letting out a bellow of 'Fuck yeah, that's a good slut!' Krampus throat-fucks you aggressively, only pausing for brief moments to allow you a gasped breath before he continues to violate your willing and eager body. The harsh, uncompromising treatment leaves your sex-drunk mind intensely aroused, and with the fires of your own arousal burning bright, you begin to masturbate feverishly while he fucks you.";
	say "     Both of your hands are down between your legs, [if Player is male]fingers of one wrapped around your rock-hard shaft and pumping it up and down while the other cups your balls[else if Player is female]two fingers curling to stroke the inner walls of your pussy while you rub your clit with urgent desire[else]stroking the flesh of your barren pelvis with instinctual need for release[end if]. [if Player is not neuter]The result is that you're fairly close yourself by the time that [end if]Krampus sets his second hand on your head, holding you still in his vise-like grip as he gives several more harsh, deep thrusts, then lets out a resounding shout of pure lust as his cock throbs hard and sends the first gush of his seed right into your stomach. With deep grunts, he keeps cumming down your throat, again and again, painting your insides with his creamy offering until you start seeing stars dance before your eyes. He thankfully reacts immediately to the panicked pat of your hand against the firm flank of his ass, withdrawing enough for you to get in a desperate gasp of air. You lie there, dazed and aroused as he continues to shoot thick ropes of cum over your face, neck, and even upper chest, the demon leaning back while he aims his shaft here and there with a lewd grin on his muzzle.";
	WaitLineBreak;
	say "     Coming back from the fringes of passing out, you take famished gasps of air while you masturbate in a lust-fueled frenzy, eager to join your dominant partner in his climax. Fingers flying to touch and stroke yourself, you take each new splash of Krampus's cum on your naked skin as further encouragement, until you soon let out a breathless shout and thrash underneath him, [if Player is male]your own cock erupting with huge spurts of cum that splash against the small of the black goat's back. He gives a bleating laugh at that, then reaches behind himself to wipe your load off of his back and feed it into your mouth[else if Player is female]your pussy gushing femcum and soaking the furs underneath your crotch[else]tingling sensations spreading throughout your whole body[end if]. Your shared orgasms slowly wind down after that, with the virile demon's spurts eventually ebbing off. He continues to rock his hips back and forth, even after he's spent, letting his balls teasingly drag over your skin.";
	say "     Leaning forward and bringing his head close to yours, Krampus licks your face possessively, then says, 'That'll do for now, slut... but only because you came to me and asked for it. I'm not this soft on those I have to drag from their hiding spots.' Throwing a look over to the sack, the fire in his eyes burns brighter for a second and Krampus's cock gives another little throb, looking almost ready for a second round of sex. But no, he just tousles your hair a little, then rises to his hooves and steps aside. You are left stretched out on the furs, cum-splattered and exhausted, but also very, very satisfied.";
	NPCSexAftermath Player receives "OralCock" from Krampus;

to say KrampusSex2: [Krampus fucks player pussy]
	say "     A";
	NPCSexAftermath Player receives "PussyFuck" from Krampus;

to say KrampusSex3: [Krampus fucks player ass]
	say "     A pleased rumble emanates from the demonic goat's chest as you offer your ass to him, and he grabs you by the shoulders with both of his strong hands. 'Just what I had in mind,' he teases with a deep-voiced laugh before pulling you in roughly against his coal-black fur, the throbbing length of his prick pressing up against your fore. Links of broken chain clink against each other as the large beast grabs the back of your head, bending it backwards so that he can use his long, pointy tongue to lick possessively from the base of your neck, up over your cheek, then all the way to your left earlobe, leaving a trail of hot saliva in his wake. 'You are mine now,' he whispers into your ear in a husky tone that sends shivers of submissive pleasure running down your spine.";
	say "     Krampus holds your head still as he presses his muzzle to your mouth, exploring it with that bestial tongue in a deep, demanding kiss. In the meantime, his spare hand sets to work, pulling all of that unnecessary gear and clothing from your form, impatiently wrenching it aside to lay you bare. After a few moments of sharing your breath with this powerful beast during his hungry kisses, Krampus pulls your head back from his and slides the remaining garments off of your upper body, leaving you standing naked in his cave. The large anthro goat takes two steps backwards to allow the firelight to play over your body, heavy hooves making the ground tremble just a little while his chain links clink against each other. A broad grin spreads over his muzzle, showing the sharp fangs that he calls his own.";
	WaitLineBreak;
	say "     'Look at you,' the demon goat says in a deep voice full of lust and righteous fervor, 'Stripping away everything - garments, fame, power, self-illusions, and excuses - and what is left in the end? The sum of a person's choices, and the consequences thereof. Like your own, to search me out.' A certain air of amusement accompanies his last words, suggesting that what you are about to experience is Krampus in a slightly more playful mood than what he'd usually display for those he has to catch and drag off in his sack. The large and throbbing black shaft between his legs leaves little doubt that you'll be harshly used, but in a good way, making you tremble with anticipation. And you don't have to wait long for the big, black goat to come for you, throwing you over one shoulder to carry you off to the countless furs that serve as his bedding.";
	say "     You find yourself lowered onto the warm furs, lying naked before the powerful beast you have given yourself to. Krampus is quick to push your legs apart to kneel between them, then bends forward to let his tongue wander up your chest in a hot trail of teasing stimulation. He stops at your nipples, circling and sucking on them, his hungry eagerness leaving slight impressions of his teeth on your [if Breast Size of Player > 0]breasts[else]pecs[end if]. Grunting in satisfaction, the goat-demon gives your hard nipples a last flick of his tongue, then goes on to lick further up your neck and towards your lips, prying them apart with that warm, wet muscle to delve deep into your mouth, the broad impression of his muzzle blotting out what little light casts over you. Large hands grope and caress your stretched out form, until Krampus lets them stroke all the way down your sides and pulls back from making out with you.";
	WaitLineBreak;
	say "     'Oh yes, my little slut. You are ready for me, I can tell. Trembling from a single touch and moaning into my mouth as I explore yours.' His wandering hands reach your hips, and the big, black goat reflexively clamps a solid grip on your body. He pauses for a moment, enjoying the way you squirm in his grasp, before his strong fingers slide further down to take hold of your thighs. With a sudden pull from him, you find yourself almost in a headstand, legs slung back to hook over the muscular demon's shoulders. He grins down at you in hungry way, then brings his muzzle to one of your buttocks in a sudden love-bite, leaving a teeth-shaped mark on your ass to remember him by. Leaning in close, Krampus takes a long, slow lick up the crack of your ass, scintillating heat blossoming out from the slick streak smeared across your flesh. Several sweeps follow to lather your ass in hot, demonic drool before the big goat presses his pointed tongue against your ring, lips sealing snug to the puffy pliance of your pucker. Soon, the prying pressure gives way to his probing tongue pushing deep inside of you, the nimble appendage seeking out every sensitive nerve along your anal walls and attacking them all at once.";
	say "     Grunting and huffing your scent, nose pressed against your skin right where both legs meet, Krampus eats you out with a wild and bestial energy. Not for a second does he stop his relentless assault on your ass, even as you squirm in his grasp and whimper in pleasure. He continues this, right until you are reduced to helplessly gasp for air, almost out of your mind from the sensations wracking your body. 'Did you like that, pet?' he demands in a sudden question, yet as you start to pant out a reply, his tongue has already moved on, [if Player is female]lapping over your wet and dripping sex and teasing the clit[else if Player is male]wrapping around your rock-hard erection and teasing its leaking cum-slit[else]brushing over the sensitive skin of your sexless crotch[end if], which reduces your answer to little more than a lewd, weak groan.";
	WaitLineBreak;
	say "     Laughing, Krampus lowers you back down, allowing you to lie stretched out for a short moment while he strokes his monstrous, black cock with smug satisfaction. The inner fire in his eyes almost seems to affect you physically as they wander hotly over your naked form with his hungry gaze. 'Time to try you out, butt-slut!' the black-furred demon calls out loudly, almost daring those outside the cave to come inside and see what's happening. Lifting and spreading your legs, Krampus raises your ass to a receptive position, then brushes his erection against you by rolling his hips. He slowly centers the shaft to rest in the crack, rubbing up and down until the broad dickhead catches on the rim of your well-prepared pucker. Without further ado, he rams himself into your body, sinking his hard prick halfway in the span of a single heartbeat.";
	say "     'Yeah!' the goat-demon grunts out in satisfaction as you gasp from the sudden penetration. 'Whimper for me, little piggy! I really can't get enough of you mortals['] reaction to that first deep thrust,' he tells you with relish in his voice, then pushes forward even further, sliding inch by inch of his infernal cock into your depths. Being both thick as well as long, his manhood stretches the limits of your asshole with its respectable girth, giving you a hot and full sensation that you won't soon forget. Bottoming out a second later, the demonic goat leans over you and gives you another deep kiss while his furry balls grind against your ass. After wrestling with your tongue for a while, it seems that your grace period to get used to his member is over, and Krampus straightens his posture as he gets ready to fuck you in earnest.";
	WaitLineBreak;
	say "     Large and strong hands clamp down upon your thighs, holding them firmly as the big, black goat slides himself out of your ass completely in a shockingly sudden wrench, only to ram his prick home just as quickly. What starts in your throat as a shocked gurgle at the sudden impalement just goes on and on, Krampus prolonging your ecstasy with a merciless tempo of power-fucking that leaves you to gasp and moan with every plunge of the caprine's monstrous cock. The large anthro goat really knows how to push someone's buttons, taking you to a strange place of pleasure and pain. His cock is a lot to take, yet at the same time feeling so very, very good as he ravages your asshole. Just when you're about to cum from this relentless fucking, your lover suddenly stops in motion, simply resting the throbbing member halfway inside of you and letting you cool down from the brink of your release.";
	say "     He does this to you once, twice, then a third and fourth time, almost driving you wild with the urgent [italic type]need[roman type] to finally get off, but any attempts to plead, beg, or cajole him into granting you sweet release are only answered by rough, derisive laughter. 'Wouldn't be much of a punishment if you were in control, eh? No, my pet, I am your master now, and I decide when you're allowed to cum!' Krampus says in a voice full of amusement and lust, then resumes his powerful thrusts, ramming all the way to the hilt inside of your weary rectum. Yet this time, he actually maintains the smooth grind against your slightly sore asshole, finally relenting to allow you the long-awaited conclusion of your marathon fuck, your mind flooding with bliss as you rapidly approach the point of no return.";
	WaitLineBreak;
	say "     With shocking intensity that has you thrashing on the thick furs of Krampus's bed, you cum [italic type]hard[roman type], [if Player is male]your cock erupting with long streaks of creamy cum that splatter your whole chest[else if Player is female]your pussy leaking copious amounts of femcum that soaks into Krampus's pubic fur and trickles over his still thrusting shaft[else]tingling sensations spreading from your crotch to sear the nerves of your whole body in unbelievable heat[end if]. Your grinning tormentor relishes your helpless moans as your inner muscles clamp around his thick, turgid prick, finally relaxing the iron will that was holding his own orgasm in check all this time. 'Hell yeah, take it, you little slut!' comes the loud bellow of the black-furred beast as he buries himself all the way, then erupts into you, sizzling hot cum from his weighty balls flooding your insides in a true deluge of seed.";
	NPCSexAftermath Player receives "AssFuck" from Krampus;
	say "     Exhausted and bewildered by the intensity of your coupling with the dominant anthro goat, you lie under him and feel as weak as a kitten as he continues to pump more spurts of caprine seed into your depths, the output of his balls only slowly ebbing off. Unfortunately, nothing is forever. As the virile demon's orgasm eventually reaches its end, he pulls out from your aching hole in a gush of frothy cum. Leaning forward and bringing his head close to yours, Krampus licks your face possessively, then says, 'That'll do for now, slut... but only because you came to me and asked for it. I'm not this soft on those I have to drag from their hiding spots.' Throwing a look over to the sack, the fire in his eyes burns brighter for a second and Krampus's cock gives another little throb, looking almost ready for a second round of sex. But no, he just tousles your hair a little, then rises to his hooves and steps aside. You are left stretched out on the furs, cum-splattered and exhausted, but also very, very satisfied.";

to say KrampusBondageStart:
	say "     The demonic goat's roaring laughter reverbs on the wall of the cave. He leans back on his seat, a hand to his chin and a perverted gleam in his eyes. 'Tied up? Where do you think you are, my foolish [if Player is not defaultnamed][name of Player][else]visitor[end if]? But fine. I needed the distraction anyway.' The black goat suddenly rises up and grabs your jaw with his strong hand, stopping you cold. 'Usually, people [italic type]fear[roman type] the consequences of their actions, yet here you are, begging for me to deprive you of freedom. What a naughty, little slut.' Lowering his head to look straight into your eyes, Krampus proceeds to run his pointy tongue over your cheek in a possessive fashion, then whispers into your ear, 'Guilty or perverted, you are [italic type]mine[roman type] for now, and I know exactly what you need.'";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "[KrampusBondage1]";
		-- 2:
			say "[KrampusBondage2]";
		-- 3:
			say "[KrampusBondage3]";

to say KrampusBondage1:
	say "     Letting go of you with a chuckle resounding in his broad chest, Krampus moves over to an iron-banded chest standing in a dark corner of the cave. Every step of his heavy hooves makes the ground tremble just a little bit, and the chain links attached to his manacles clink as he moves. The black anthro goat throws back the lid and rummages around in the chest, soon pulling out a set of heavy leather cuffs and a matching collar. Having followed him halfway to check out what he was doing, you are in arm's reach for the big brute, and you are easily caught hold of to be dragged closer. Letting the heavy lid fall shut with a thud, he pushes you to sit on the large chest, then goes on to wrap the collar around your neck, pulling it tight. You begin to complain about the tightness, but Krampus shuts you up with a slap and growls, 'Naughty [if Player is male]boys[else]girls[end if] do not get to complain.' He then twists your arms behind your back and cuffs your wrists together. Finally, your limbs are tugged down, which makes the strap linking the cuffs to the collar tilt your head up. 'Mmmh. Better!'";
	WaitLineBreak;
	say "     Turning you around so that you are no longer sitting, but rather lying over the chest, the black goat runs his large hand down your back possessively. With a quick wrench, he lays your buttocks bare and takes his time to cup and grope your rear end for his own satisfaction. 'So, my naughty, little [if Player is not defaultnamed][name of Player][else]volunteer[end if],' he says, running a finger between the cleavage of your ass and all the way through your parted thighs until he is prodding at [if Player is female]your clit[else]the tip of your cock[end if], '[italic type]someone[roman type] told me that you have misbehaved lately.' Krampus states, his deep voice full of anticipation. 'I hope that you are prepared to make amends.'";
	if Player is male:
		say "     Krampus grinds the tip of your cock between his fingers, reveling in your instinctive struggling. 'You have been very naughty, haven't you, slut?' he asks. The goat's hand grabs your [CockName of Player in lower case] dick and squeezes. One of his claws plays leisurely with your urethra. 'Look how hard you are from my touch. Very naughty indeed.' Krampus strokes your shaft slowly, going up and down its [cock size desc of Player] length with slow and strong movements[if Player is knotted]. Upon touching your knot, he envelops it in his charcoal-skinned palm and polishes it, making you howl in pleasure. 'How precious,' Krampus says with a toothy grin[end if]. He pauses for a second, pulling you up by the hair to look at his hand and see it glisten with pre. 'See that, bitch? You love it, don't you dare deny it.'";
	else:
		say "     Krampus pinches your clit between his clawed fingers. He pulls it, twists it, flickers it, delighted with your instinctive struggling. 'You have been very naughty, haven't you, slut?' he asks. The goat's middle finger slips into your [cunt size desc of Player in lower case] cleft. The finger pushes as far as it can, the claw slowly rubbing at your inner walls near your G-spot. One of his others claws plays leisurely with your urethra. 'Look how hard you are from my touch. Very naughty indeed.' Krampus has his index join the other finger inside your cunt. He pumps them back and forth slowly, occasionally stretching your vagina by moving his digits apart. 'How precious,' Krampus says with a toothy grin. He pauses for a second, pulling you up by the hair to look at his hand and see it glisten with the fluids from your wet pussy. 'See that, bitch? You love it, don't you dare deny it.'";
	WaitLineBreak;
	say "     'Now, I'm kind of tired of hearing naughty adults whine and cry as I tend to them,' Krampus grunts, 'so I will give this dirty mouth of yours a better use.' Without warning, you are snatched up from where you are bent over the chest and pivoted upside-down. Krampus lines up his cock with your mouth and lets gravity push it down your throat. You gag noisily, while the goat guides your head so that your nose is crammed against his furry balls. 'How's that for a punishment, little slut?' he demands, giving your ass a couple of additional slaps. You gargle pitifully in response, and he comments amusedly, 'That's what I thought.'";
	if Player is male:
		say "     Holding you with one arm wrapped around your body and his hand clamped on your head, Krampus fucks your mouth nice and slow, making sure that you get a good whiff of his musky scrotum each time he bottoms out inside of you. In the meantime, the goat swallows your cock and runs his long tongue around your length. To keep you from getting too much pleasure out of that, he keeps nibbling your shaft just a little bit and squeezes your balls rather tightly. After a little while longer of pumping you up and down on his cock, Krampus thrusts his hips forward and really wedges all of his length down your throat. With a deep grunt from the black goat, you can feel his cock spasm and deliver the first heavy throb of cum into your stomach, followed by another, and another. Satisfied, the goat sucks your cock with such gusto that you're nearly pushed over the edge. But just as you are beginning to cum, Krampus quickly pulls out and squeezes the base of your cock, ruining your orgasm. 'That's what you get for being a disobedient boy,' he bleats out in a teasing tone.";
	else if Player is female:
		say "     Holding you with one arm wrapped around your body and his hand clamped on your head, Krampus fucks your mouth nice and slow, making sure that you get a good whiff of his musky scrotum each time he bottoms out inside of you. In the meantime, the goat pushes his long, pointy tongue into your cunt and wiggles it around. To keep you from getting too much pleasure from it, he regularly pulls out to nibble on your clit just a little bit. After a little while longer of pumping you up and down on his cock, Krampus thrusts his hips forward and really wedges all of his length down your throat. With a deep grunt from the black goat, you can feel his cock spasm and deliver the first heavy throb of cum into your stomach, followed by another, and another. Satisfied, the goat licks your cunt with such gusto that with such gusto that you're nearly pushed over the edge. But just as you are beginning to cum, Krampus quickly pulls out and leaves your pussy alone, ruining your orgasm. 'That's what you get for being a disobedient girl,' he bleats out in a teasing tone.";
	else:
		say "     Holding you with one arm wrapped around your body and his hand clamped on your head, Krampus fucks your mouth nice and slow, making sure that you get a good whiff of his musky scrotum each time he bottoms out inside of you. In the meantime, the goat pushes his tongue, raspy tongue into your ass and wiggles it around. To keep you from getting too much pleasure from it, he regularly pulls out to catch your inner thighs between his teeth, leaving some light bite marks. After a little while longer of pumping you up and down on his cock, Krampus thrusts his hips forward and really wedges all of his length down your throat. With a deep grunt from the black goat, you can feel his cock spasm and deliver the first heavy throb of cum into your stomach, followed by another, and another. Satisfied, the goat pulls his tongue out and leaves your ass completely alone. The cool air beating against your spit-slathered asshole sends shivers up your spine. 'That's what you get for being a disobedient boy,' he bleats out in a teasing tone.";
	WaitLineBreak;
	say "     Eventually, Krampus pulls you back upright, standing a little unsteadily on your own feet. He unbuckles your cuffs and the collar and throws the getup into his large chest, closing the lid firmly before you have the time to get a good look of what else may be inside. Concluding his punishment with a long, forced kiss, the demon licks the remnants of his own cum, and tells you, 'That's enough punishment for today, slut. Get out of here. I've got some harder cases to take care of now.' Following his gaze, you see the huge, red sack next to the heap of furs that serves as his bed. There is movement inside of that thing, as if someone was trying to find his way out of it.";
	LineBreak;
	say "     As you start to collect your clothes and get dressed again, you can't help but feel that this was just one of the many possible punishments the goat-demon has in store for those on his naughty list. [bold type]Maybe he'll decide on something different next time.[roman type][line break]";
	NPCSexAftermath Player receives "OralCock" from Krampus;

to say KrampusBondage2:
	say "     Keeping his hold of you, Krampus pulls you towards one of the many sets of manacles set into the wall. He takes care to pick a pair that will force you stay on your toes, grinning as he presses your wrists into the metal bands and locks the restraints tight. Letting go of you with a chuckle resounding in his broad chest, Krampus moves over to an iron-banded chest standing in a dark corner of the cave. Every step of his heavy hooves makes the ground tremble just a little bit, and the chain links attached to his manacles clink as he moves. The black anthro goat throws back the lid and rummages around in the chest, soon pulling out a spreader bar. Unable to move from your spot, you are powerless to prevent the big brute from attaching your ankles to the bar, leaving your private parts accessible and defenseless. 'Keep staring at the wall, [if Player is male]boy[else]girl[end if],' Krampus orders gruffly.";
	say "     You do as you are told. You hear the clapping of Krampus's hooves on the stone floor approach. He hugs you from behind, enveloping you in his body, then licks the side of your neck in a possessive manner. 'You are mine now,' he whispers into your ear in a husky tone that has shivers of submissive pleasure running down your spine. His hands run over your body, groping your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]firm pecs[end if] and your crotch. "; [text continues below]
	if Player is submissive:
		say "Krampus finds your nipples already erect[if Player is male], as is your cock[end if]. As he runs a finger [if Player is female]along your wet cleft[else]along your butt-crack[end if], the demon grins. 'Already excited, naughty slut? Aren't you the masochist.' He licks your neck and presses his body against yours, pinning you between his large, furry chest and the wall[if scalevalue of Player < 4]. You feel your feet actually leaving the ground[end if].";
		say "     'You were actually longing for me to punish you, weren't you?' Krampus demands to know, bending your head to the side and slipping his tongue inside of your mouth as you try to reply, wrestling with your own appendage and pushing it down. At the same time, [if Player is female]two of his large fingers squeeze into your [cunt size desc of Player] pussy, using the weight of your body to dig their way deep into your vagina[else]a large hand grabs your [cock size desc of Player] shaft and begins to polish the sensitive glans[end if]. You moan heartily, pushing your back against the large rod that you know is Krampus's thick and meaty dick. 'Good,' the coal-black goat says, breaking the kiss. 'That's a good kid. Now, let's get back to work.'";
	else:
		say "Under his touch, your nipples [if Player is male]and your cock [end if]become erect despite anything you can do about it. The goat runs a finger [if Player is female]along your wet cleft[else]along your butt-crack[end if], pressing the tip of his digit inside of your hole and letting your body react by trying to push it away. 'Don't like it when I'm touching you like this?' Krampus asks with a grin. 'This is supposed to be a punishment, after all.' He licks your neck and presses his body against yours, pinning you between his large, furry chest and the wall[if scalevalue of Player < 4]. You feel your feet actually leaving the ground[end if].";
		say "     'But that is what you wanted, is it not?' Krampus demands to know, bending your head to the side and slipping his tongue inside of your mouth as you try to reply, wrestling with your own appendage and pushing it down. At the same time, [if Player is female]two of his large fingers squeeze into your [cunt size desc of Player] pussy, using the weight of your body to dig their way deep into your vagina[else]his large hands grab your [cock size desc of Player] shaft and begins to polish the sensitive glans[end if]. You groan and tremble in his grasp, but that only serves to excite Krampus further by grinding your back against his cock. 'Yes. Squirm, [if Player is male]boy[else]girl[end if],' Krampus says, breaking the kiss. 'I have a surprise for you.'";
	WaitLineBreak;
	let KSackPull be a random number from 0 to 1; [random choice of which partner comes out]
	say "     'Since you volunteered on your own, and considering that I have far naughtier persons to punish, I have decided that you have earned yourself a little carrot, my dear pet.' Krampus twists the chains of your manacles, making you face away from the wall. While you try to stabilize yourself with your toes, your captor walks to his huge, red bag. He opens it and pulls out a dazed [if KSackPull is 0]male wolf[else if KSackPull is 1]bunny girl[end if]. 'Time to serve for some of your misdeeds,' Krampus says to the other person. 'I want you to reward this [if Player is male]boy[else]girl[end if] over there with your mouth. If you do not make [ObjectPro of Player] cum within ten minutes, I am fucking your ass raw. Are we clear?'";
	if KSackPull is 0: [reluctant wolf dude]
		say "     The wolf grumbles out agreement between pressed-together teeth and begins to walk towards you, only to be tripped by Krampus, making him fall on his knees. 'Did I give you permission to stand up since last time? Stay on your knees, naughty wolf! Standing up and walking are for people more deserving than you.' The canine growls, but obeys, and crawls towards you. Arriving at his destination, he rises up to put your crotch at eye level and gives your [if Player is male]cock[else]clit[end if] a tentative lick. 'If you feel his teeth scrape you, even a little bit, tell me. It will make his own punishment [italic type]worse[roman type],' Krampus tells you. You look down at the wolf, who returns a deadly glare. You feel that if he could chomp your genitals apart, he would have already done so. ";
		if Player is male:
			say "The wolf goes to work on your shaft. He visibly dislikes sucking cocks, but the fear of Krampus and the fresh air from outside of the bag motivates him to do a decent job. Already excited by the goat's fondling, you eventually cum, a little before the limit of ten minutes has passed.";
			WaitLineBreak;
			say "     The wolf is about to pull you out from his muzzle when he feels your body tensing up, but Krampus is quick to press his nose against your crotch. 'Swallow. I don't want to have to clean my floor after I am done with the both of you.' The wolf coughs but manages to swallow your [Cum Load Size of Player] load[if Ball Size of Player >= 5]. You watch the wolf's belly bulge obscenely as his body tries to keep up with your load[end if]. ";
			CreatureSexAftermath "Black Wolf" receives "OralCock" from "Player";
		else:
			say "The wolf pushes his muzzle against your [cunt size desc of Player] pussy and starts licking. From his eagerness at attacking your clit and slurping his long canine tongue all the way to your cervix, you can tell that he enjoys his time out of the bag and so do you. Already excited from earlier, you wiggle your hips in rhythm with the wolf.";
			WaitLineBreak;
			say "     Feeling your legs beginning to tremble from the fatigue, the wolf grabs them. But Krampus, who is right behind him, snatches your limbs away and make them rest around the wolf's head. 'Squeeze these legs, [if Player is not defaultnamed][name of Player][else]fucktoy[end if],' he commands, looking directly at you. You do not question and do as you are told, smothering the poor wolf as a powerful orgasm courses through your body, under the gaze of Krampus, who impassively watches every second of it. You feel yourself squirting, painting the wolf's face with your fem-cum. ";
			CreatureSexAftermath "Black Wolf" receives "OralPussy" from "Player";
	else if KSackPull is 1: [subservient bunny girl]
		say "     'O-okay, sheesh', the bunny says, visibly flustered from her time inside of Krampus's sack. You notice the pink handle of a vibrator that is buried inside of her pussy, buzzing softly. It clearly has been there for quite a while, judging from the femcum-matted fur between her legs. 'J-just, please can you turn it off...' she starts to ask, but Krampus's responding glare makes the young woman shut up instantly. On trembling legs, she walks towards you. 'Please don't fuck this up,' the bunny whispers to you, as she prepares to put her small mouth to work. ";
		if Player is male:
			say "'Good thing that you're a guy. I'm used to this,' the girl says and slips the head of your cock into her mouth, all under the watchful eye of Krampus. She is indeed experienced, working her tongue up and down your sensitive shaft, before gulping it down into the tight confines of her throat. She would have made you cum in a matter of minutes if Krampus did not say out loud: 'I'm going to add a new rule.' He strokes his chin with his hand, before continuing 'If he cums in [italic type]less[roman type] than five minutes, you will be punished too.'";
			WaitLineBreak;
			say "     The bunny girl mutters in disapproval but reluctantly obeys. She slows down her rhythm, keeping you on the edge deliberately. Once the time limit has passed, she goes back full-force. Within moments, you cum hard into her mouth. Krampus is about to say something, but the bunny girl takes it on herself to swallow every single drop. 'You learned from the last time, it seems,' the goat says. 'I will consider removing this vibrator in a little while.' The girl pulls your dick out of her mouth, gasping[if Ball Size of Player >= 4]. A small belch escapes her throat as she slowly massages her cum-filled stomach[end if]. ";
			CreatureSexAftermath "Easter Bunny" receives "OralCock" from "Player";
		else:
			say "The bunny starts eating you out. She does not seem used to perform cunnilingus, but nonetheless applies herself at the task. She tries slipping her tongue into your [cunt size desc of Player] pussy, but it is too short to reach the good spot. Time is fleeting, and the girl begins to panic. You nudge her to take care of your clit by wiggling your hips a few times. She gives you a thankful look and starts nibbling and licking at the sensitive, little bump. Her soft lips and tongue do wonders on your pleasure button. So good, that you actually squirt some fem-cum into the bunny's mouth.";
			WaitLineBreak;
			say "     'Yuck! Eerk!' she protests. 'What was that?' Krampus asks, puffing his chest and walking next to the bunny. 'She-she squirted on me? Th-that's gross.' 'Gross? I would say that is a shame.' 'W-Why?' 'Because this is all the lube that you will get.' Krampus slams his hand on the bunny's crotch, shaking the vibrator inside. 'No-no-no-no! I'll be a good girl! I'll be a good girl, see!' She licks your clit as fast as she can. 'Be a nice kid and clean her pussy, too,' the goat-demon commands. The bunny abides and licks your juices in a hurry. Eventually, you cum hard thanks to the help of the young woman. ";
			CreatureSexAftermath "Easter Bunny" receives "OralPussy" from "Player";
	say "'Good,' Krampus asserts, hands to his hips. 'Very good. Now, back to the bag you go.' Grabbing the [if KSackPull is 0]wolf[else]bunny[end if] by the neck, he throws the captive carelessly into his red sack, oblivious to some begged pleas for freedom. 'You will get a proper punishment later. Consider this a mitigation.'";
	say "     The goat turns towards you and observes for a moment. A hand to his chin, he admires the tired but relieved expression on your [FaceSpeciesName of Player in lower case] face. Eventually, he reaches for your wrists and unlocks the manacles, allowing you to plant your feet firmly on the floor. He removes the spreader bar, setting you completely free. Grabbing your butt possessively, the demon nudges you towards the exit. 'That's enough punishment for today, slut. Get out of here. Like you've seen, I've got some harder cases to take care of now.' Following his gaze, you see the huge, red sack next to the heap of furs that serves as his bed, and you remember the [if KSackPull is 0]wolf[else]bunny[end if] trapped inside.";
	LineBreak;
	say "     As you start to collect your clothes and get dressed again, you can't help but feel that this was just one of the many possible punishments the goat-demon has in store for those on his naughty list. [bold type]Maybe he'll decide on something different next time.[roman type][line break]";

to say KrampusBondage3:
	say "     'Actually, you may be of some help,' Krampus says. 'See, I'm always trying to keep up with your world's technical progress. My old bags still do the trick, but they can occasionally allow someone to slip away.' The goat nods at the sack on his bed. A hand was starting to poke out, trying to open the bag enough to allow its owner to escape. Krampus snorts and gives the large bag a slap, making the hand recede. 'Lately, a certain kind of [']bags['] have caught my attention.' The goat grabs something from a pile of bags next to the bed. It is a black, rubbery sack. '[one of]You will test it for me, in exchange for a few naughtiness marks removed from your list[or]I need more tests, and you need less items on your list, believe me[stopping].'";
	say "     Without waiting for your answer, Krampus throws you into the rubber bag. With his strong arm, he guides your lower face to a large plastic funnel attached to the fabric. 'Get that in your mouth and don't let go. If people asphyxiate themselves, the whole point of the punishment is lost.' You follow Krampus's advice. The rigid plastic prevents you from closing your mouth, but at least, you can breathe this way. Once your entire body is in the sack, the demonic goat has you kneel on the floor while he zips up the sack. 'Get cozy, [if Player is male]boy[else]girl[end if], because once it begins, you won't move before I'm done with you.' You hear Krampus fumble with something on your sack. [one of]Wait. A black, rubber sack. Is it?[or]You know what's coming and prepare yourself.[stopping]";
	WaitLineBreak;
	say "     You hear an air pump turning on, then the sound of air being evacuated from the bag. The rubber lining tightens around you, until it presses on your skin. 'Try moving, [if Player is male]boy[else]girl[end if].' Now that the rubber presses on your ears, Krampus's voice is muffled, but you manage to understand what he says. You try flexing your arms, but find yourself unable to move them a single centimeter. 'You should see yourself. A cute, little pet, all wrapped up like a Christmas present.' You feel yourself being lifted. You squirm into your rubber prison, and Krampus laughs as he pats your butt condescendingly. You are thrown onto a soft surface, which you can only guess is the bed, and Krampus's hands begin to run all over you. They explore every nook and crevice of your trapped body, pinching your nipples and massaging your abs, before focusing especially on your lower regions. The goat presses his hand on the rubber[if Player is male], turning you on and making your cock grow hard, pressed between your belly and the rubber[end if][if Player is female], pushing the black material into your cleft[end if], inserting a finger into your ass and amusing himself of the imprint of the rubber sticking at the rim of your anus.";
	say "     Krampus pins you down on his bed, his large caprine tongue delving into your blocked open mouth, almost gagging you. 'Reacting already? Poor [if Player is male]boy[else]girl[end if], I am merely making you work my tongue. You need some training. But first...' You hear Krampus fetch something else from his trunk. Soon, something hard is pressed on your [if Player is male]shaft[else]cleft[end if] and fixed there with some tape. 'My favorite Christmas show: the Krampus's pet belly-dance.' Krampus turns the object on, and a powerful vibration diffuses through your crotch. You moan loudly, realizing that Krampus has attached a vibrating wand onto you, and you start squirming against the merciless stimulation of the sex toy. You can hear Krampus having a good time and applaud. 'Oh, yes, you should [italic type]definitely[roman type] see yourself. It is hilarious!' the goat mocks. 'This bag is rather complex to use, but consider the possibilities. I could make people come and admire you dance for me all day.' You bellow [if Player is submissive]lusciously[else]anxiously[end if] at Krampus's words. 'But today, I will content myself with a private show.'";
	WaitLineBreak;
	if WSLevel is 3:[Trigger warning, watersports]
		say "     After several minutes of futile wiggling, you feel something heavy get on the bed. The sound of the manacles clinking tells you that it is Krampus. Your hunch is confirmed when the demonic goat pushes his pre-dripping glans into your mouth. 'Be a sweet [if Player is male]boy[else]girl[end if] and drink it up.' You have barely the time to emit an inquisitive moan when you feel a stream of warm liquid flow down your mouth. Your eyes bulge under the rubber[if Player is submissive], your excitement rising[else]your panic peaking[end if] as you realize that the goat is using you as his personal toilet. 'Oooh, that felt good. I should do this more often.' You squeal as the acidic taste of urine floods your taste buds for half-a-minute. Groaning in relief, Krampus walks away and returns to his seat to watch the end of your losing battle with the vibrating wand.";
	else:
		say "     After several minutes of futile wiggling, you feel something heavy get on the bed. The sound of the manacles clinking tells you that it is Krampus. Your hunch is confirmed when the demonic goat pushes his pre-dripping glans into your mouth. He grabs your hooded [FaceSpeciesName of Player in lower case] head and pushes his shaft down your throat. Your eyes bulge under the rubber[if Player is submissive], your excitement rising[else]your panic peaking[end if] as there is no way to escape the demon's face-fuck. 'Couldn't. Resist,' Krampus says, punctuating each word with a thrust of his hips. 'Big. Empty. Hole. Waiting. For my. Cock. Hrnnnng!' His cock spasms on your mouth, and you feel warm, thick spunk go down your esophagus. Fortunately, Krampus pulls out right away and showers your rubber-sack with his cum. 'Oooh, that felt good.' You squeal as you try to catch your breath, still locked into a losing battle with the vibrating wand. Groaning in relief, Krampus walks away and returns to his seat to watch the rest of the show.";
	if Player is male:
		say "     The wand eventually pushes you past your limits. You moan and thrash in your rubber prison as your own cock spurts its load. You feel it spread under the rubber sheet, staining your lower body[if Ball Size of Player > 3]. Unfortunately, since the mutations made you so productive, it goes on, and on, and on, until your entire body is soaked in your own sexual fluids[end if].";
	else:
		say "     The wand eventually pushes you past your limits. You moan and thrash in your rubber prison as your pussy quivers, staining the rubber and your thighs with fem-cum.";
	say "     The continuous stimulation of the vibrator begins to make you wince, but, in a possible bout of mercy, Krampus walks back to you and turns it off. You hear him open the air valve of the sack, and you crawl out, trembling and damp with several kind of fluids. 'What a pitiful sight,' Krampus groans. 'There's a sponge and some water over there. Wash yourself up, and go get some rest. You are in no state to play for now.'";
	LineBreak;
	say "     As you start to collect your clothes and get dressed again, you can't help but feel that this was just one of the many possible punishments the goat-demon has in store for those on his naughty list. [bold type]Maybe he'll decide on something different next time.[roman type][line break]";

to say KrampusPunishStart:
	say "     A taunting huff comes from the demonic goat's nostrils as he listens to your plea, and the inner fire of his eyes flares up a little. 'Oh, someone [italic type]wants[roman type] to be punished, does [SubjectPro of Player]? It's rare that someone is self-aware of their failings,' Krampus says, raising an eyebrow as you nod eagerly. The black goat grabs your jaw with his strong hand, stopping you cold. 'Usually, people [italic type]fear[roman type] the consequences of their actions, yet here you are, begging for me to rough you up. What a naughty, little slut.' Lowering his head to look straight into your eyes, Krampus proceeds to run his pointy tongue over your cheek in a possessive fashion, then whispers into your ear, 'Guilty or perverted, you are [italic type]mine[roman type] for now, and I know exactly what you need.'";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "[KrampusPunish1]";
		-- 2:
			say "[KrampusPunish2]";
		-- 3:
			say "[KrampusPunish3]";

to say KrampusPunish1: [cuffed and spanked]
	say "     Letting go of you with a chuckle resounding in his broad chest, Krampus moves over to an iron-banded chest standing in a dark corner of the cave. Every step of his heavy hooves makes the ground tremble just a little bit, and the chain links attached to his manacles clink as he moves. The black anthro goat throws back the lid and rummages around in the chest, soon pulling out a set of heavy leather cuffs and a matching collar. Having followed him halfway to check out what he was doing, you are in arm's reach for the big brute, and you are easily caught hold of to be dragged closer. Letting the heavy lid fall shut with a thud, he pushes you to sit on the large chest, then goes on to wrap the collar around your neck, pulling it tight. You begin to complain about the tightness, but Krampus shuts you up with a slap and growls, 'Naughty [if Player is male]boys[else]girls[end if] do not get to complain.' He then twists your arms behind your back and cuffs your wrists together. Finally, your limbs are tugged down, which makes the strap linking the cuffs to the collar tilt your head up. 'Mmmh. Better!'";
	WaitLineBreak;
	say "     Turning you around so that you are no longer sitting, but rather lying over the chest, the black goat runs his large hand down your back possessively. With a quick wrench, he lays your buttocks bare and takes his time to cup and grope your rear end for his own satisfaction. 'So, my naughty, little [if Player is not defaultnamed][name of Player][else]volunteer[end if],' he says, running a finger between the cleavage of your ass and all the way through your parted thighs until he is prodding at [if Player is female]your clit[else]the tip of your cock[end if], '[italic type]someone[roman type] told me that you have misbehaved lately.' Krampus states, his deep voice full of anticipation. Clearly, he doesn't really expect a reply as a slap of your [BodyName of Player in lower case] butt follows straight away, filling the cave with the sound of skin on skin. Your body jerks instinctively at the stinging sensation, but Krampus holds you fast.";
	say "     'You have been very naughty, haven't you, slut?' [italic type]slap[roman type] 'You fucked left and right.' [italic type]slap[roman type] 'Wherever and whenever.' [italic type]slap[roman type] 'You have given yourself too many times to count.' [italic type]slap[roman type] 'Or if you haven't yet, you sure will.' [italic type](slap, slap)[roman type] Your cheeks begin to burn from the thorough spanking Krampus gives you, with just the right amount of time between each strike for the full sensations to settle in. In between every couple of spanks, the black goat runs his fingers along your genitals, and soon enough, he pauses for a second, pulling you up by the hair to look at his hand and see it glisten with [if Player is herm]pre and vaginal fluid[else if Player is male]pre[else]the fluids from your wet pussy[end if]. 'See that, bitch? You love it, don't you?' [italic type]SLAP[roman type][line break]";
	WaitLineBreak;
	say "     Grinning widely in obvious arousal and showing the long and vicious fangs in his mouth, the goat-demon then demands, 'Now, be a good [if Player is male]boy[else]girl[end if] and say out loud what you are. I want the whole mall to hear you! Come on, say it: [']I am Krampus's naughty slut![']'";
	say "     'I am Krampus's naughty slut.'";
	say "     'Yes!' [italic type]SLAP[roman type] 'Louder!'";
	say "     'I am Krampus's naughty slut!'";
	say "     [italic type]SLAP SLAP[roman type]. Your eyes are teary, but the humiliation that you feel is so exciting that you grind yourself against the hard and smooth surface of the chest. Krampus rewards your obedience by [if Player is male]grabbing your cock and jerking it roughly[else]squeezing two fingers inside of your pussy and pumping in and out[end if], his other hand giving your butt more slaps. 'I said LOUDER!' he roars.";
	say "     'I am Krampus's naughty slut! I AM KRAMPUS'S NAUGHTY SLUT! I AM AH-Aaaah!' At your limit, your entire body trembles, and you cum hard into Krampus's hand. He keeps masturbating you until the overstimulation makes you wince, then pulls away and leans down to tell you in a husky tone, 'Look, we've got some spectators.' Turning your head to the side, you see several elves peeking around the corner of the entrance tunnel, staring wide-eyed at what is going on in the cave. Grinning, Krampus pushes his [if Player is male]cum[else]fem-cum[end if]-coated fingers into your mouth. 'Lick them clean,' he orders, but you were already on it as soon as you felt the salty taste of your own cum on your tongue.";
	WaitLineBreak;
	say "     Eventually, Krampus pulls you back upright, standing a little unsteadily on your own feet. He unbuckles your cuffs and the collar and throws the getup into his large chest, closing the lid firmly before you have the time to get a good look of what else may be inside. With a last quick slap on your stinging buttocks, the demon tells you, 'That's enough punishment for today, slut. Get out of here. I've got some harder cases to take care of now.' Following his gaze, you see the huge, red sack next to the heap of furs that serves as his bed. There is movement inside of that thing, as if someone was trying to find his way out of it.";
	LineBreak;
	say "     As you start to collect your clothes and get dressed again, you can't help but feel that this was just one of the many possible punishments the goat-demon has in store for those on his naughty list. [bold type]Maybe he'll decide on something different next time.[roman type][line break]";

to say KrampusPunish2: [flogging + bag bj or punishment fuck]
	say "     Keeping his hold of you, Krampus pulls you towards one of the many sets of manacles set into the wall. He takes care to pick a pair that will force you stay on your toes, grinning as he presses your wrists into the metal bands and locks the restraints tight. Letting go of you with a chuckle resounding in his broad chest, Krampus moves over to an iron-banded chest standing in a dark corner of the cave. Every step of his heavy hooves makes the ground tremble just a little bit, and the chain links attached to his manacles clink as he moves. The black anthro goat throws back the lid and rummages around in the chest, soon pulling out a spreader bar. Unable to move from your spot, you are powerless to prevent the big brute from attaching your ankles to the bar, leaving your private parts accessible and defenseless. 'Keep staring at the wall, [if Player is male]boy[else]girl[end if],' Krampus orders gruffly.";
	say "     You do as you are told, but you cannot help giving side glances to the large goat-demon. The black-furred anthro is standing in front of a collection of whips and flogs, pondering which one to choose. 'You willingly came to me to be punished... that might mean you're half-repentant, or that your misdeeds are so numerous that you couldn't help yourself. Hmhm... yes. This one will do, either way.' Krampus turns around, a cat o['] nine tails made of leather straps in his hand; you stare back at the wall in a hurry but you hear the horned anthro let out a disapproving huff through his nostrils as he catches you disobeying his order. The clapping of his hooves on the stone floor approaches once more, followed by the whip laying red streaks over your butt as it delivers a moderately strong hit. 'What did I tell you, [if Player is male]boy[else]girl[end if]? I guess that we will start by correcting this little breaking of the rules. Five more should do.'";
	WaitLineBreak;
	say "     Krampus proceeds to give the remaining strokes with deliberate slowness. Each time the leather straps slap your butt, you jump on your toes, hissing under your breath. After the sixth strike, the stinging gets replaced by a sensation of warmth as blood rushes to the affected area. You feel Krampus's body envelop you as he hugs you from behind, licking the side of your neck in a possessive manner. 'You are mine now,' he whispers into your ear in a husky tone that has shivers of submissive pleasure running down your spine. His hands run over your body, groping your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]firm pecs[end if] and your crotch. "; [text continues below]
	if Player is submissive:
		say "Krampus finds your nipples already erect[if Player is male], as is your cock[end if]. As he runs a finger [if Player is female]along your wet cleft[else]along your butt-crack[end if], the demon grins. 'Already excited, naughty slut? Aren't you the masochist.' He licks your neck and presses his body against yours, pinning you between his large, furry chest and the wall[if scalevalue of Player < 4]. You feel your feet actually leaving the ground[end if].";
		say "     'You were actually longing for me to punish you, weren't you?' Krampus demands to know, bending your head to the side and slipping his tongue inside of your mouth as you try to reply, wrestling with your own appendage and pushing it down. At the same time, [if Player is female]two of his large fingers squeeze into your [cunt size desc of Player] pussy, using the weight of your body to dig their way deep into your vagina[else]a large hand grabs your [cock size desc of Player] shaft and begins to polish the sensitive glans[end if]. You moan heartily, pushing your back against the large rod that you know is Krampus's thick and meaty dick. 'Good,' the coal-black goat says, breaking the kiss. 'That's a good kid. Now, let's get back to work.'";
	else:
		say "Under his touch, your nipples [if Player is male]and your cock [end if]become erect despite anything you can do about it. The goat runs a finger [if Player is female]along your wet cleft[else]along your butt-crack[end if], pressing the tip of his digit inside of your hole and letting your body react by trying to push it away. 'Don't like it when I'm touching you like this?' Krampus asks with a grin. 'This is supposed to be a punishment, after all.' He licks your neck and presses his body against yours, pinning you between his large, furry chest and the wall[if scalevalue of Player < 4]. You feel your feet actually leaving the ground[end if].";
		say "     'But that is what you wanted, is it not?' Krampus demands to know, bending your head to the side and slipping his tongue inside of your mouth as you try to reply, wrestling with your own appendage and pushing it down. At the same time, [if Player is female]two of his large fingers squeeze into your [cunt size desc of Player] pussy, using the weight of your body to dig their way deep into your vagina[else]his large hands grab your [cock size desc of Player] shaft and begins to polish the sensitive glans[end if]. You groan and tremble in his grasp, but that only serves to excite Krampus further by grinding your back against his cock. 'Yes. Squirm, [if Player is male]boy[else]girl[end if],' Krampus says, breaking the kiss. 'We are merely getting started.'";
	WaitLineBreak;
	say "     Krampus lets go of you and readies his cat o['] nine tails once more. The leather whip flogs your butt-cheeks once, twice, three times... After ten lashes, your butt is burning, and you are certain that there will be bruises. [if Player is submissive]Nonetheless, you are incredibly excited to serve as Krampus's playtoy. [end if]'Now, my naughty, little [if Player is not defaultnamed][name of Player][else]volunteer[end if], [bold type]I want to hear how sorry you are[roman type]. And with the proper forms.'";
	say "     You deeply apologize to [if Player is submissive]Master[else]Mister[end if] Krampus, even if you are not really sure what you are exactly apologizing for. Still, the large goat seems satisfied. 'What a hearty plea. I hope that you are not saying this only to placate me. Are you?' Krampus demands and flogs your butt one more time, prompting you to declare one more time how sorry you are that you were naughty and that you will be nice from now on. 'Your compliance is touching, fucktoy,' Krampus snorts. 'I was only going to go for a flogging, but since it seems that you have put [italic type]half[roman type] of your heart into it, I think I earned myself a reward for my hard work.' Krampus once again leans over you, but this time you feel his huge cock grind between your legs. 'Having regrets, yet?' he asks sarcastically.";
	WaitLineBreak;
	if anallevel is 3 or Cunt Count of Player is 0:
		say "     Slowly, agonizingly slowly, Krampus pushes his maleness against your asshole. You feel your anal ring stretch painfully wide to accommodate the goat's thick cock. Groaning, you try to escape his hard shaft impaling you, but you have no space to maneuver. Krampus chuckles at your futile resistance. 'What's this, [if Player is not defaultnamed][name of Player][else]fuckpet[end if]? I have not even put all of the head inside yet.' On these words, he pushes further, and you feel his glans being pushing into you[if Player is male]. Your prostate is squished, making you start oozing pre and dripping onto the floor[end if]. 'That's better. But that is only one naughty thing. Let us go down the list, shall we?' Grunting, Krampus bear hugs your chest, then pulls out and rams his member in with more power.";
		say "     Again and again, like a pendulum. Each time, the goat whispers something in your ear, in between two possessive licks. 'And this is for...' 'And this is for...' 'And this is for...' Somehow, the coal-black goat knows it all: Every single enemy you defeated and abused, every survivor you have been rude to or outright attacked, every companion you cheated on. By the time he finishes, Krampus had worked your hole enough to push his entire length in you. You can feel it [if scalevalue of Player < 4]make your belly bulge obscenely[else]push against your stomach[end if] each time the muscular being goes all in";
		if WSlevel is 1:
			say ".";
		else:
			say ". The goat's crushing hug, coupled with the constant ramming against your bladder, makes you lose control of yourself. You feel your piss escape from your urethra and splash on the ground. Krampus laughs heartily at your demise. 'Yes, that's it. Resistance is futile. Show everyone your true nature. Show everyone what a dirty little animal you are.'";
		WaitLineBreak;
		say "     The furious ramming pushes you to the edge of your self-control, and beyond. Without any outside help, [if Player is male]your cock spurts a heavy dose of cum thanks to your battered prostate[else]Your empty pussy quivers from your anal orgasm[end if]. 'It seems that my punishment had quite the effect on you, you naughty slut. Your ass is squeezing my cock like a vise. Let me... Show you... My appreciation!' With a mix of a goat bleat and a roar, Krampus rams his cock as far as he can and pumps his hips several times. He holds you so tightly that you have trouble breathing. Powerless, you feel your stomach fill little by little with Krampus's cum, making it bulge outwards visibly. Only then the big black goat pulls out, letting a torrent of cum follow his cock on the way out.";
		NPCSexAftermath Player receives "OralCock" from Krampus;
	else:
		say "     Slowly, agonizingly slowly, Krampus pushes his maleness against your [if Cunt Count of Player > 1]main [end if]cunt. You feel your entrance stretch [if Cunt Depth of Player < 12]painfully [end if]wide to accommodate the goat's thick cock. Groaning, you try to escape his hard shaft impaling you, but you have no space to maneuver. Krampus chuckles at your futile resistance. 'What's this, [if Player is not defaultnamed][name of Player][else]fuckpet[end if]? I have not even put all of the head inside yet.' On these words, he pushes further, and you feel his glans being pushing into your pussy[if Player is male]. Your prostate is squished, making you start oozing pre all over the floor[end if]. 'That's better. But that is only one naughty thing. Let us go down the list, shall we?' Grunting, Krampus bear hugs your chest, then pulls out and rams his member in with more power.";
		say "     Again and again, like a pendulum. Each time, the goat whispers something in your ear, in between two possessive licks. 'And this is for...' 'And this is for...' 'And this is for...' Somehow, the coal-black goat knows it all: Every single enemy you defeated and abused, every survivor you have been rude to or outright attacked, every companion you cheated on. By the time he finishes, Krampus had worked your hole enough to push his entire length into you, crushing your cervix with each go. You can feel it [if scalevalue of Player < 4]make your belly bulge obscenely[else]push against your stomach[end if] each time the muscular man goes all in";
		if WSlevel is 1:
			say ".";
		else:
			say ". The goat's crushing hug, coupled with the constant ramming against your bladder, makes you lose control of yourself. You feel your piss escape from your urethra and splash on the ground. Krampus laughs heartily at your embarrassment. 'Yes, that's it. Resistance is futile. Show everyone your true nature. Show everyone what a dirty little animal you are.'";
		WaitLineBreak;
		say "     The furious ramming pushes you to the edge of your self-control, and beyond. Without any outside help, [if Player is male]your cock spurts a heavy dose of cum thanks to your battered prostate[else] Your over-filled pussy violently contracts[end if]. 'It seems that my punishment had quite the effect on you, you naughty slut. Your pussy is squeezing my cock like a vise. Let me... Show you... My appreciation!' With a mix of a goat bleat and a roar, Krampus rams his cock even further. You feel his penis force your cervix apart and ram into your womb, making your belly tent with the outline of his cock. He holds you so tightly that you have trouble breathing. After a couple more pumps, you feel your stomach fill little by little with Krampus's cum, sloshing around in your womb and making it bulge more and more; after a certain point, you are almost afraid that it's just going to pop. Eventually, once your belly looks like you are several months pregnant, the goat pulls out, letting a torrent of cum follow his cock on the way out.";
		NPCSexAftermath Player receives "PussyFuck" from Krampus;
	WaitLineBreak;
	say "     Krampus observes you for a moment, a hand to his chin. He admires his work; the flog marks on your [BodyName of Player in lower case] buttocks, the trail of cum running down your legs, your gaping hole... Eventually, he reaches for your wrists and unlocks the manacles, allowing you to plant your feet firmly on the floor. He removes the spreader bar, setting you completely free, sore and strained as you are. With a last quick slap on your stinging buttocks, the demon tells you, 'That's enough punishment for today, slut. Get out of here. Like you've seen, I've got some harder cases to take care of now.' Following his gaze, you see the huge, red sack next to the heap of furs that serves as his bed. There is movement inside of that thing, as if someone was trying to find his way out of it.";
	LineBreak;
	say "     As you start to collect your clothes and get dressed again, you can't help but feel that this was just one of the many possible punishments the goat-demon has in store for those on his naughty list. [bold type]Maybe he'll decide on something different next time.[roman type][line break]";

to say KrampusPunish3:
	say "     ...";

Section 3 - Infection

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Goat-Demon"	"[PrepCombat_Goat-Demon]"

to say PrepCombat_Goat-Demon:
	say "";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Goat-Demon";
	add "Goat-Demon" to infections of DemonList;
	add "Goat-Demon" to infections of MagicalList;
	add "Goat-Demon" to infections of MythologicalList;
	add "Goat-Demon" to infections of MaleList;
	add "Goat-Demon" to infections of BipedalList;
	add "Goat-Demon" to infections of TailList;
	now Name entry is "Goat-Demon";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Krampus";
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 28;
	now dex entry is 14;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Nochange"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 250; [ How many HP has the monster got? ]
	now lev entry is 20; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 30; [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 14;
	now Ball Size entry is 4; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 25; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "goat-demon milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "caprine";
	now type entry is "demon";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
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


Krampus ends here.
