Version 1 of Enhanced Chimera by Stripes begins here.
[ Version 1.0 - Infection and creature ]

"Adds an Enhanced Chimera infection to FS's Wandering Monsters table and activated during Main Storyline 2 / Hospital Quest 2."


Section 1 - Creature Responses

headadjdata is a text that varies.
furdata is a text that varies.
horndata is a text that varies.
ec_fullcount is a number that varies.

to say enhancedchimeradesc:
	choose row MonsterID from the Table of Random Critters;
	say "     [if showlocale is true]As you're snooping around in the hospital, you're[else]You[end if] are come across by one of those enhanced chimeras of Dr. Mouse's. The hybrid herm could be one of those from the photos or she might be an offspring of theirs. This one is [if lev entry < 13]a little over eight feet tall[else if lev entry < 15]roughly eight and a half feet tall[else]almost nine feet tall[end if] with a powerful and imposing body typical of the designed infection.";
	say "     The creature's face and muzzle are [headdata]-like, but with a leonine mane that cascades over her broad shoulders and the horns of a [horndata]. Her chest is armored with thick, scaly hide that follows the curves of her big breasts to preserve their buxom form and show off her perky nipples. The remainder of her body and limbs are covered in [furdata] fur, save for some armored plates on the exterior of the arms and legs. Her paw-like hands and feet have plated digits ending in claws and thicker tufts of fur at the wrists and ankles. Growing from the base of her spine is a thick tail with scale and spiny ridges. Protruding from her sheath and resting above her plump ballsack is her big, meaty cock. It is blood red in color, with a spaded tip and several firm ridges along its shaft. There's a faint swelling at the base, signs of a knot as well. Thick precum leaks down the monstrous prick as she eyes you with arousal, moving closer.";
	if BodyName of Player is "Enhanced Chimera" or FaceName of Player is "Enhanced Chimera":
		say "     The creature looks over your chimera form and gives a soft, lustful rumble. She moves towards you slowly, sniffing the air and purring softly. Not seeming aggressive, you allow her to approach. She nuzzles your cheek and runs her big paws along your body with a surprisingly gentle touch. She's clearly looking for some affection.";
		say "     [bold type]Shall you have a romp with the horny herm?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     Feeling rather aroused yourself, you show your acceptance of her advances by groping her throbbing genitals";
			say "[ec_sex]";
		else:
			say "[ec_reset]";
			say "     Not in the mood for sex, you instead give her some snuggles and scritches before separating and heading on your way. She seems a little disappointed, but does not press the matter, wandering off to find another to sate her needs.";
		now wdam entry is 0;
		now combat abort is 1;
	else:
		say "     The creature's cock throbs harder and it releases a lustful growl, rushing you with obvious intent.";
		if HardMode is false and ( lev entry is 14 or lev entry is 15 ) and level of Player < 16:
			say "     This particular hybrid seems especially powerful and dangerous. Best be careful.";

to say ec_mixnmatch:
	say "[randombaseform]";
	choose row MonsterID from the Table of Random Critters;
	let qq be a random number between 11 and 15;
	let zz be a random number between 1 and 16;
	if HardMode is true and level of Player > 13:		[Hard Mode Version!]
		increase qq by level of Player - 13;
		now HP entry is 36 + ( ( 5 * qq ) + zz + a random number between 0 and qq );
		now monsterHP is HP entry;
		now lev entry is qq;
		if lev entry > 13:
			now wdam entry is 11 + ( ( qq * 2 ) / 7 );
		else:
			now wdam entry is 9 + ( qq / 3 );
		now dex entry is 16 + ( qq / 6 ) + ( square root of ( qq + 8 ) ); [faster initial growth, but slows down more]
	else:								[Normal Play Version!]
		now HP entry is 36 + ( ( 4 * qq ) + zz );
		now monsterHP is HP entry;
		now wdam entry is 9 + ( qq / 3 );
		now lev entry is qq;
		now dex entry is 17 + ( ( qq * 2 ) / 7 );
	[testing values achieved]
[	say "Lvl is [qq]. Variable is [zz].";
	say "HP is [HP entry].";
	say "Dmg is [wdam entry]. Dex is [dex entry].[line break]";]

to say randombaseform:
	let T be a random number between 1 and 12; [head/original form]
	if T is 1:
		now headdata is "husky";
		now headadjdata is "canine";
	if T is 2:
		now headdata is "hawk";
		now headadjdata is "avian";
	if T is 3:
		now headdata is "panther";
		now headadjdata is "feline";
	if T is 4:
		now headdata is "horse";
		now headadjdata is "equine";
	if T is 5:
		now headdata is "cheetah";
		now headadjdata is "feline";
	if T is 6:
		now headdata is "rottweiler";
		now headadjdata is "canine";
	if T is 7:
		now headdata is "tiger";
		now headadjdata is "feline";
	if T is 8:
		now headdata is "hyena";
		now headadjdata is "hyenine";
	if T is 9:
		now headdata is "wolf";
		now headadjdata is "lupine";
	if T is 10:
		now headdata is "Anthro Rabbit";
		now headadjdata is "lapine";
	if T is 11:
		now headdata is "pig";
		now headadjdata is "porcine";
	if T is 12:
		now headdata is "lizard";
		now headadjdata is "reptilian";
	let TT be a random number between 1 and 5; [fur color]
	if TT is 1:
		now furdata is "dusty brown";
	if TT is 2:
		now furdata is "dark yellow";
	if TT is 3:
		now furdata is "black";
	if TT is 4:
		now furdata is "dark brown";
	if TT is 5:
		now furdata is "deep gray";
	let TTT be a random number between 1 and 4; [horns]
	if TTT is 1:
		now horndata is "triceratops";
	if TTT is 2:
		now horndata is "bull";
	if TTT is 3:
		now horndata is "ram";
	if TTT is 4:
		now horndata is "rhino";

to say ec_reset:
	[reset creature stats for next encounter]
	choose row MonsterID from the Table of Random Critters;
	now dex entry is 18; [ reset dexterity for random infection ]
	now lev entry is 12; [ reset level for random encounter availability ]

to say losetoenhancedchimera:
	if HP of Player > 0:
		say "     Rather than fight the creature, you give in and accept its lustful advances. ";
	else:
		say "     Having beaten the resistance out of you, it advances upon you with a lustful rumble. ";
	say "[ec_sex]";

to say ec_sex:
	say "[ec_reset]";
	if Player is female and a random chance of 3 in 5 succeeds:
		say "The hybrid creature pushes you down onto a nearby hospital bed, bending you over it. With a little fumbling with your remaining clothes, she gets itself lined up with your pussy and mounts you with a throaty purr. The creature's [headadjdata] mouth [if HP of Player > 0]nips tenderly along[else]bites down upon[end if] your neck as she thrusts her ridged cock into you again and again with increasing vigor. You can feel the heavy slaps of the chimera's large ballsack against [if Player is male and player is not internalBalls]your own[else]your thighs[end if]. Those balls feel quite full, probably stuffed to the brim with a slurry of hybrid semen mixed from whatever may have in part been used to help concoct this chimera.";
		say "     The horny creature continues her vigorous humping, driving her hybridized shaft into you over and over again. The feel of that spearhead tip spreading your vaginal walls open, the texture of the ridged shaft sliding along your inner walls, the growing firmness of the knot at its base - all of these exciting sensations build your arousal higher and higher[if HP of Player <= 0] despite yourself[end if]. Her myriad of scents becomes exciting to you and soon you're panting and moaning for the chimera to fill you[if Player is fpreg_able] and breed you[end if]. She releases a pleased rumble at your words and drives harder into you[if hospquest >= 19]. That latent chimera treatment inside you tingles in anticipation of getting a boost as the creature attempts to sire another of her kind in you[else]. The idea of her changing you in random ways or siring almost anything inside you arouses you greatly[end if]. As you push back into her final thrusts, you both moan in pleasure as she knots you fully. Moments after, you feel the first of many shots of her hot seed, thick and plentiful from her throbbing balls being shot deep into your womb. And with the knot there, it ensures it all remains inside you so you're properly infected and bred by her load before she pulls out and departs.";
		if hospquest >= 19:
			say "     [fimpregchance]";
		else:
			say "     [randomfimpreg]";
	else if anallevel > 1 and ( Cunt Count of Player is 0 or anallevel is 3 ) and ( ( a random chance of anallevel in 5 succeeds and Cock Count of Player is 0 ) or ( a random chance of anallevel in 7 succeeds and Player is male ) ):
		say "The hybrid creature pushes you down onto a nearby hospital bed, bending you over it. With a little fumbling with your remaining clothes, she gets itself lined up with your anal ring and mounts you with a throaty purr. The creature's [headadjdata] mouth [if HP of Player > 0]nips tenderly along[else]bites down upon[end if] your neck as she thrusts her ridged cock into you again and again with increasing vigor. You can feel the heavy slaps of the chimera's large ballsack against [if Player is male and Player is not internalBalls]your own[else]your thighs[end if]. Those balls feel quite full, probably stuffed to the brim with a slurry of hybrid semen mixed from whatever may have in part been used to help concoct this chimera.";
		say "     The horny creature continues her vigorous humping, driving her hybridized shaft into your ass over and over again. The feel of that spearhead tip pushing its way into your bowels, the texture of the ridged shaft sliding along your inner walls, the growing firmness of the knot at its base - all of these exciting sensations build your arousal higher and higher[if HP of Player <= 0] despite yourself[end if]. Her myriad of scents becomes exciting to you and soon you're panting and moaning for the chimera to fill you[if Player is mpreg_able] and breed you[end if]. She releases a pleased rumble at your words and drives harder into you[if hospquest >= 19]. That latent chimera treatment inside you tingles in anticipation of getting a boost from the creature pounding away at your ass[else]. The prospect of her changing you in random and unexpected ways starts arouses you greatly[end if]. As you push back into her final thrusts, you both moan in pleasure as she knots you fully. Moments after, you feel the first of many shots of her hot seed, thick and plentiful from her throbbing balls being shot deep into your bowels. And with the knot there, it ensures it all remains inside you so you're properly infected[if Player is mpreg_able] and bred[end if] by her load before she pulls out and departs.";
		if hospquest >= 19:
			say "     [mimpregchance]";
		else:
			say "     [randommimpreg]";
	else if Player is male and Cock Length of Player > 5 and a random chance of 3 in 5 succeeds:
		say "The hybrid creature pushes you back onto a nearby hospital bed. With a little fumbling at your remaining clothes, she gets your [Cock of Player] cock exposed and ready before climbing atop you. The creature's [headadjdata] mouth [if HP of Player > 0]nips tenderly along[else]clamps down upon[end if] your neck as she pushes her hips down onto your shaft. She rides you vigorously from the very beginning, working your [cock size desc of Player] shaft in and out of her with lustful need. The herm's heavy shaft and scrotum grind and slap against your belly as she rides upon you with wet, meaty thwacks. Those balls feel quite full, probably stuffed to the brim with a slurry of hybrid semen mixed from whatever may have in part been used to help concoct this chimera. You can feel it pulsing and throbbing as it drools a growing mess of sticky precum onto you.";
		say "     The horny creature continues her vigorous humping, driving your manhood into her heated cunny over and over again. Those inner walls of hers squeeze and tug at your shaft, working hard to milk you to climax[if HP of Player <= 0] despite your attempts to resist[end if]. As the mating continues, her myriad of scents becomes exciting to you and soon you're panting and moaning that you're about to cum. She releases a pleased rumble at your words and grinds her hips down upon your crotch, causing her big cock to throb and spurt more pre[if hospquest >= 19]. That latent chimera treatment inside you tingles in anticipation of getting a boost from the rush of semen soon to come[else]. The idea of the oncoming rush of semen changing you in random ways arouses you greatly[end if]. Grabbing her by the hips, you push your cock up into her in a final thrust and you both moan in ecstasy. You pump your [Cum Load Size of Player] load into the chimera herm as she unloads her balls across your face and chest. The semen is thick and gooey, rich with a medley of flavors that you can't help but lick from your lips and rub into your body.";
	else:
		say "The hybrid creature pushes you to your knees before her. She presses her strange cock to your face and into your mouth. She moans softly and strokes your head, coaxing you to lick and suck it. Her arousing scent, such a strong and virile mix, excites you and you [if HP of Player <= 0]soon give in and comply[else]comply willingly enough[end if]. She starts to thrust into you, holding your head steady with her clawed hands while pumping her foot-long cock into your [if HP of Player <= 0]increasingly [end if]eager mouth. Her precum leaks onto your tongue, thick with an array of arousing flavors.";
		say "     You slide a hand up to fondle her large, furry ballsack and find it full and heavy. The feel like they're stuffed to the brim with cum - a slurry of hybrid semen mixed from whatever may have in part been used to help concoct this chimera[if hospquest >= 19]. That latent chimera treatment inside you tingles in anticipation of getting a boost from the rush of semen you'll soon be ingesting[else]. In your increasingly sex-addled state, the thought of having the creature's spooge transform you in unpredictable ways seems a small price to pay if you can get to taste the rich mix her balls are brewing. The prospect even starts to become arousing in its own right, filling you with additional excitement. You start to picture yourself changing in random ways while these creatures have their way with you again and again.";
		say "     You moan in delight at the large chimera growls in climax, pumping a hot, thick medley of cum into your mouth and down your throat. You swallow down as much as you can of her impressive load, then sag to the ground as she releases you. You flop back onto the floor and release a wet gurgle. You roll the mix of tastes around in your mouth, enjoying the delightfully corruptive fluid sliding across your tongue and down your throat. The chimera, sated for now, wanders off, leaving you to the infection's changes.";
	if hospquest >= 19:
		infect;
		decrease humanity of Player by a random number between 1 and 4;
	else:
		weakrandominfect;
		[
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			increase MonsterID by 1;
			choose row MonsterID from Table of Random Critters;
		]

to say beattheenhancedchimera:
	say "[ec_reset]";
	say "     Having defeated the enhanced chimera, you drive the creature off.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Enhanced Chimera"	"[PrepCombat_Enhanced Chimera]"

to say PrepCombat_Enhanced Chimera:
	setmongender 5; [creature is herm]
	say "[ec_mixnmatch]";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Chimera"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Enhanced Chimera" to infections of BodyHorrorList;
	add "Enhanced Chimera" to infections of HybridList;
	add "Enhanced Chimera" to infections of ScienceList;
	add "Enhanced Chimera" to infections of HermList;
	add "Enhanced Chimera" to infections of TaperedCockList;
	add "Enhanced Chimera" to infections of KnottedCockList;
	add "Enhanced Chimera" to infections of SheathedCockList;
	add "Enhanced Chimera" to infections of BipedalList;
	add "Enhanced Chimera" to infections of TailList;
	add "Enhanced Chimera" to infections of TailweaponList;
	now Name entry is "Enhanced Chimera"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The [one of]enhanced chimera[or]powerful chimera[or]hybrid creature[or]lustful chimera[at random] [one of]strikes you with one of its powerful backhand[or]bashes you with an armored fist[or]charges you with its horns[or]head-butts you hard enough to make your head ring[or]slashes at you with its claws[or]gnaws at your arm with its mix of sharp teeth[or]growls and kicks you hard with a powerful leg[or]spins around sharply to bash you against a wall with its big tail[at random]!";
	now defeated entry is "[beattheenhancedchimera]"; [ Text when monster loses. ]
	now victory entry is "[losetoenhancedchimera]"; [ Text when monster wins. ]
	now desc entry is "[enhancedchimeradesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a chimeric mix of features, the base of which is a square-jawed [if Player is male]stag[else]deer[end if]. The most prominent differences are the small horn on the end of your nose and the leonine mane that flows into golden-brown hair. Atop your head is an impressive set of antlers between your wolf-deer ears";
	now body entry is "quite large, standing roughly nine feet tall and built to match. You have broad shoulders and a powerful chest. Your limbs are similarly built, with strong muscles. They don't bulge, instead possessing tight-knit might";
	now skin entry is "a coat of brown fur that's broken up in several places by firm, leathery plates. These are most prominent on your chest, outer thighs and forearms. On your chest, they [if Nipple Count of Player > 0 and Breast Size of Player > 0]cup your breasts like an armored bodice, both supporting and emphasizing your cleavage while also leaving your nipples exposed for fun[else if Breast Size of Player > 0]cup your breasts like an armored bodice, both supporting and emphasizing your cleavage[else]emphasize your strong pecs and firm abs[end if]";
	now tail entry is "Your tail is long, thick and reptilian in form. It has a thick hide and small bony ridges running along the top of it.";
	now cock entry is "[one of]hybrid[or]knotted[or]ridged[or]multi-breed[at random]";
	now face change entry is "it shifts and forms a cervine muzzle. That shifts and changes subtly as other additions come into effect. Sharper teeth are added to your mouth, a small horn on the end of your nose and a flowing lion's mane of hair beneath your impressive antlers";
	now body change entry is "it goes through several shifts. As these progress, you become a large and buff creature. Your shoulders broaden and your muscles firm up, powerful while not bulging. You stand around 9 fight tall and have a well-built frame designed for the rigors of post-apocalyptic combat";
	now skin change entry is "a coat of rich, brown fur spreads across your body. Even as this is spreading outwards, tougher plates supplant the fur on your chest. Similar toughened plates form on your outer thighs and forearms as well.";
	now ass change entry is "your buttocks firm up with strong muscles. At the top of them, a tail goes out from the base of your spine, long and thick with small bony ridges along the top. It looks quite reptilian or saurian in shape";
	now cock change entry is "it transforms. The first stage has it as a black-skinned, but otherwise perfectly human, cock. From there, the changes progress, gaining a horse-like shaft with firm, stimulating ridges along it. Your glans becomes pointed and spade-like while a knot swells at the base as you spurt several blasts of semen from it";
	now str entry is 18; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat. ]
	now per entry is 18;
	now int entry is 18;
	now cha entry is 18;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 13; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 10;
	now SeductionImmune entry is false;
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "enhanced chimera milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]powerful[or]strong[at random]";
	now type entry is "[one of]chimeric[or]hybrid[or]mutant[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


[
Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Enhanced Chimera Infection"	"Infection"	""	Enhanced Chimera Infection rule	1000	false

This is the Enhanced Chimera Infection rule:
	if Player has a body of "Enhanced Chimera":
		trigger ending "Enhanced Chimera Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Enhanced Chimera ends here.
