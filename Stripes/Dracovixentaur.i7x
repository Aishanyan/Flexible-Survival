Version 1 of Dracovixentaur by Stripes begins here.
[Version 1.3 - Alt attack tweaked]
"Adds a Dracovixentaur creature to Flexible Survival's Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Creature Responses

DVtaurcatch is a number that varies. DVtaurcatch is usually -40.

to say losetoDVtaur0:
	if Player is herm:		[HERM]
		let T be a random number between 1 and 6;
		if T is 1 or T is 2:
			say "[losetoDVtaur1]";
		else if T is 3 or T is 4:
			say "[losetoDVtaur2]";
		else if T is 5:
			say "[losetoDVtaur3]";
		else if T is 6:
			say "[losetoDVtaur4]";
	else if Player is male:				[MALE]
		let range be 4;
		increase range by anallevel;
		let T be a random number between 1 and range;
		if T is 1 or T is 2 or T is 3:
			say "[losetoDVtaur2]";
		else if T is 4:
			say "[losetoDVtaur3]";
		else if T is 5:
			say "[losetoDVtaur4]";
		else if T is 6 or T is 7:
			say "[losetoDVtaur1]";
	else if Player is female:				[FEMALE]
		let T be a random number between 1 and 5;
		if T is 1 or T is 2 or T is 3:
			say "[losetoDVtaur1]";
		else if T is 4:
			say "[losetoDVtaur3]";
		else if T is 5:
			say "[losetoDVtaur4]";
	else:								[NEUTER]
		let T be a random number between 1 and 2;
		if T is 1:
			say "[losetoDVtaur3]";
		else if T is 2:
			say "[losetoDVtaur4]";


to say losetoDVtaur1:	[DV fucks]
	say "     Having defeated you, the dracovixentaur roars triumphantly and presses you to the ground. She rumbles in your ear as she moves to mount you about how [if Player is female]she's going to breed you full of whelps and kits[else][one of]she will pound you until you're overflowing with cum[or]she's been looking for some fun[at random][end if] and thrusts into you with little preamble. Her tapered tip is designed for prying open reluctant holes and pushes its way into your [if Player is female][cunt size desc of Player] pussy with ease[else]tight anus[end if]. The draconic cock thickens as it pushes further into you, each of those ridges on it acting as delightfully pleasurable markers of just how much meat the powerful taur is stuffing inside you.";
	say "     The dracovixen fucks you with lustful zeal, pounding you until you're nearly insensate with lust before finally pushing her knot into you and tying with you. She releases a triumphant growl as she finally climaxes. She blasts shot after shot of her creamy load into your wanton hole, bloating your [if Player is female]womb[else]belly[end if] with her prodigious output. Finished and tied together, she has an enjoyable time groping and fondling you until the knot has finally shrunk down enough to pop out. After she pulls out, she leaves you on the ground, leaking her cum from your overstuffed and gaping [if Player is female]pussy[else]asshole[end if].[DVimpregchance]";
	if Player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Dracovixentaur";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Dracovixentaur";

to say losetoDVtaur2:	[DV rides]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground. She murrs in your ear about how [one of]she wants you to breed some kits in her[or]much fun she's going to have with you[or]she's been looking for some fun[at random]. You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom. You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     She gets your [cock size desc of Player] [Cock of Player] shaft lined up and sinks down onto your throbbing rod with ease. She rumbles and yips as she rides up and down. Her inner walls squeeze and ripple across your manmeat in so many delightful ways. She presses your face to her breast, coaxing you to start suckling from her, drinking down her spicy, perfumy milk. Her large, pulsing cock is pressed between you both as she rides your rod. The dracovixen fucks you with wild, animalistic abandon, pounding her hips down onto yours until you're nearly insensate with lust and finally climax as her pussy clamps down around your shaft as she cums. You blast your [if Ball Size of Player > 5]large [end if]load into her, breeding the lustful vixen, possibly siring more of these hybrid creatures. Having got what she wanted, she giggles and heads off after flashing you her pussy with your cum [if Ball Size of Player > 5]flowing[else]leaking[end if] out of it.";
	CreatureSexAftermath "Dracovixentaur" receives "PussyFuck" from "Player";

to say losetoDVtaur3:	[DV nursing]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground. She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random]. You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom. You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     She grinds her hips down onto you, rubbing her wet, dripping pussy and ridged, dragon cock against your [Skin of Player] flesh. Her paws rub and knead over you, [if Player is herm]one of them wrapping around your [cock size desc of Player] cock while the other goes for your juicy pussy[else if Player is male]one of them wrapping around your [cock size desc of Player] [Cock of Player] cock[else if Player is female]one of them slipping between your legs to tease your [cunt size desc of Player] pussy[else]teasing every sensitive spot they can find[end if]. She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk. She continues to rub against you until she finally cums, soaking you in her cum and juices. Having had her fun, she gets up with a giggle, presses her sticky crotch into your face and trots off merrily.";
	CreatureSexAftermath "Dracovixentaur" receives "Stroking" from "Player";

to say losetoDVtaur4:	[DV blowjob]
	say "     Having defeated you, the dracovixentaur rumbles excitedly and presses you to the ground. She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random]. You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom. You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
	say "     Stepping over you, she presses her throbbing cock to your face, precum spurting from it across your lips. The musky fluid tastes of spices and perfume and is quite exciting. You find yourself wanting more and lick at her dribbling glans before welcoming her cock into your mouth. You moan in pleasure as that ridged length slides past your lips and over your tongue before pressing its tapered glans down your throat. She presses one of her forepaws at the back of your head, encouraging you to bob your head over her meat as she fucks your face while her rearmost pair of breasts rub against the top of your head. You reach up and knead her hefty balls and finger her dripping pussy until she finally cums, feeding you a heavy load of her exotically tasting semen. Once she's done, you're left feeling full from her large load.";
	CreatureSexAftermath "Player" receives "OralCock" from "Dracovixentaur";

to say beattheDVtaur:
	if HP of Sam is 15:
		say "     You manage to knock Sam down, having beaten the fight out of him.";
	else if a random number between 1 and 100 < DVtaurcatch and ( Player is not neuter):
		say "     The beaten dracovixentaur backs away from you, stumbling somewhat from her injuries. Like the others, she prepares to release a blast of flame to allow her escape, but you rush forward and clamp her muzzle shut in an arm lock. She thrashes briefly before exhaling a cloud of smoke as the flames fail. You press her to the ground and pin down her wings. With her caught, you consider having some fun with her.";
		if Player is male:
			say "     You could [link]fuck her (1)[as]1[end link], [link]ride her (2)[as]2[end link], get a [link]blowjob (3)[as]3[end link] or just [link]let her go (0)[as]0[end link].";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 3:
				say "Choice? (0-3)>";
				get a number;
			if calcnumber is 1:
				say "[beatDVtaur1]";
			else if calcnumber is 2:
				say "[beatDVtaur2]";
			else if calcnumber is 3:
				say "[beatDVtaur3]";
			else:
				say "[beatDVtaur0]";
		else:
			say "     You could [link]ride her (1)[as]1[end link], get [link]eaten out (2)[as]2[end link] or just [link]let her go (0)[as]0[end link].";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>";
				get a number;
			if calcnumber is 1:
				say "[beatDVtaur2]";
			else if calcnumber is 2:
				say "[beatDVtaur4]";
			else if calcnumber is 0:
				say "[beatDVtaur0]";
	else:
		say "     The beaten dracovixentaur backs away from you, stumbling somewhat from its injuries. It opens its maw wide and releases its fire in a wide wave, forcing you back. It takes this opportunity to make its retreat and take to the air. It does not fly steadily, but is able to stay airborne and make its escape.";
		increase DVtaurcatch by 33;
		if DVtaurcatch > 90, now DVtaurcatch is 90;

to say beatDVtaur1:
	say "     Keeping the defeated hybrid pinned beneath you, you move around so you're laying across her back. Pushing her tail up, you get your cock into position and slide it across her wet folds. She dracovixen moans and fidgets beneath you with growing excitement. '[one of]Mmm... to the victor go the spoils[or]Hurry up and give it to me[or]Come on! Let's see what you can do[or]Breed me, you [bodytype of Player] stud[at random]!' she rumbles. Grabbing her sexy bottom, you drive your cock into her and start fucking, pounding the slutty fox's juicy hole.";
	say "     The dracovixentaur releases a mix of yips, growls and rumbling purring as you fuck her. Her cunt squeezes and rubs over your thrusting shaft in strange and delightful ways, the taur's vagina clearly made for pleasing any male that mounts her. Reaching around, your grab her plump breasts and play with her nipples, getting her to dribble milk in a growing pool on the ground while enjoying the sounds of delight she makes at this. When you finally cum, you drive hard into her and unleash your [if Ball Size of Player > 6]huge[else]large[end if] load while she cries out in ecstasy and sprays her own seed into the milky mess beneath her. When you're through, you pull out, wipe your cock on her fluffy tail and give her a playful swat. She bounds off, happily filled with the virile seed of a powerful lover.";
	CreatureSexAftermath "Dracovixentaur" receives "PussyFuck" from "Player";

to say beatDVtaur2:
	say "     Deciding that you might indeed want to have some fun with the hybrid, but on your own terms, you push the fallen taur over onto her side and grab her cock. While it had been softening and receding after her defeat, it quickly rises back to its full glory as you stroke it. She tries to rise so she can mount you, but you push her back down firmly and instead straddle her. With her rear turned over and the rest of her on her side you're able to position yourself overtop of her cock and guide it into your [if Player is female]wet cunt[else]tight pucker[end if]. Her tapered glans slips easily into you, spreading you open for her thickening length below it.";
	say "     You run your hands through her soft fur and play with her many breasts as you sink more and more of his ridged shaft into you. Each of those ridges provide delightful pleasure to you as they slide across your [if Player is female]pussy lips[else]anal ring[end if] and inner walls. Her hips try to buck and thrust into you, but to little avail. You're the one setting the pace this time and, having gotten very aroused by this point, intent to make the most of it. You vary your pace and position several times[if Player is female], riding through several small orgasms[else], working the pulsing, textured rod against your prostate[end if] while always building yourself higher and not letting the dracovixen get off. And when your massive orgasm finally comes crashing over your in waves of ecstasy, you quickly slam down onto her knot. Forcing that meaty bulge into your [if Player is female]stuffed pussy[else]stretched anus[end if] pushes the hybrid over the edge as well. She roars loudly and cums hard, blasting thick dracovixencum deep inside you, filling your [if Player is female]womb[else]belly[end if] with her virile seed[if Player is male] while you spray your own load across her furry chest[end if].[DVimpregchance]";
	say "     As you wait for her balls to drain into you and her knot to go down, you turn your attention back to her numerous breasts. You stroke over the large and lovely melons, enjoying their soft, lilac fur and perky, lavender nipples. As you tease and pinch those purple nips, the hybrid's milk starts to flow while yips and rumbles of pleasure come from her. Feeling her knot having shrunk enough to free yourself, you pop off of her with a wet, sticky sound and a flow of cum down your thighs. Once she's gotten up, you give her rear a playful swat and send her on her way.";
	if Player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Dracovixentaur";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Dracovixentaur";

to say beatDVtaur3:
	say "     Deciding that you might indeed want to have some fun with the hybrid, but on your own terms, you keep a grip on the dracovixen and move around in front of her. Grabbing her horns, you pull her face between your legs so her muzzle's squarely at your cock. Finding herself face to penis with you, she becomes more accommodating and gives your cock a few slow licks. Eager for more, you pull her head forward and order her to get sucking. The powerful herm accepts her punishment for being beaten with little reluctance, opening her draconic muzzle and accepting your [Cock of Player] cock into its warm embrace.";
	say "     Her tongue slides along your shaft and out of her sucking mouth to play across your balls[if Player is female]. It delves further back to lap across your pussy a few times before returning to the task at hand[end if]. Soon enough she's lapping over your erection and balls, growing more eager to service the victor. She fellates you with considerable skill, her talented muzzle is silky smooth. Her agile tongue, soft palate and gripping throat feel wonderful as well. The whole of her muzzle feels like a hot cunt around your cock with the added pleasure of her delightful tongue. Clearly designed for it by the nanites, these sexy dracovixens give a wonderful blowjob and you eagerly take advantage of the opportunity to enjoy it. And from the wet moans and muffled yips of pleasure from the taur's stuffed muzzle, she's certainly savoring it as well. You thrust into her muzzle, driving your [cock size desc of Player] [Cock of Player] cock into her mouth harder and faster until you finally cum, feeding the horny hybrid taur your cum[if Ball Size of Player > 6] until she's stuffed full and bloated with it[else] and leaving her tummy a little rounded from it all[end if]. The dracovixentaur eagerly licks you clean before releasing your spent shaft. You give her rear a playful swat and send her on her way.";
	CreatureSexAftermath "Dracovixentaur" receives "OralCock" from "Player";

to say beatDVtaur4:
	say "     Keeping a grip on the hybrid, you move around in front of her. Grabbing her head by the horns, you push her face between your legs so her muzzle's squarely at your pussy. Finding herself face to cunt with you, she stops resisting and rumbles happily. [one of]'Mmm... to the victor go the spoils!' [or]'Let me take care of that for you,' [or]'I'm sorry for being such a naughty girl earlier. Let me make it up to you,' [or]'Ooo! This looks serious! Lemme kiss it and make it aaallllll better,' [at random]she says excitedly. And with that, the purple hybrid sets to work licking and lapping at your cunt.";
	say "     Her tongue is quite adept at the task, working hard to please you and able to reach so many delightfully sensitive spots inside you with ease. Despite your attempts to remain quiet, you can't help but moan and cry out as she expertly eats you out. She eagerly laps up your flowing juices as she works that flexible appendage around inside you. Feeling no need to keep holding her in place, you release her horns and run your hands over her ears and through her hair. After a few small orgasms, she works you up to a large, crashing one that leaves your head spinning as her tongue goes wild inside your spasming vagina. When you finally manage to push the eager dracovixen's muzzle back, her tongue pops out with a wet slurp. She grins at you, licks her muzzle and flies off with a happy giggle.";
	CreatureSexAftermath "Dracovixentaur" receives "OralPussy" from "Player";

to say beatDVtaur0:
	say "     Not in the mood to play with the purple dracovixentaur, you give her ass a hard swat and warn her not to get in your way again. She yips at the swat and slinks a few feet away before taking to the air and flying off.";

Section 2 - Creature Insertion

to say DVtaurdesc:
	say "     Before you is a hybrid taur creature, definitely one of Sam's many descendants. The creature's draconic head has a slender, pointed muzzle with a foxish look on it. Its lavender scales change to lilac fur at the back of its head as they approach the base of the ivory horns which jut from the back of its head. Aside from the pair at the top, there are three smaller horns on each side. Behind those are a pair of vulpine ears and flowing hair, both lilac in color. Its upper body is generally human in shape, but covered in more lilac fur over the shoulders and the front and in lavender scales protecting the rest. It is quite curvaceous, with an ample bosom, slender waist and round hips blending into its tauric lower half. But you can also see hidden strength in it as well, toned muscles and abs under those scales and fur.";
	say "     Its lower body is a similar mix of dragon and fox, a sleek but powerful beast with shapely limbs and a powerful frame to support its weight. Similarly covered in a mix of scales and fur, most of its body is armored in scales with fur at its underside and covering its taloned, vulpine paws. Atop the back of its tauric body are a pair of draconic wings that are folded alongside its sides at the moment. Its fluffy fox tail ends in a spaded tip, warning you there's a powerful, draconic tail lurking beneath that fluff. Beneath that tail is her damp pussy and plump sheath and balls, the arousing scent of which is being wafted around by her fluffy tail. Its ridged cock has started to emerge from that furry sheath, growing hard in anticipation of some lustful fun with its current prey. Along her underbelly, she has three pairs of smaller breasts with perky, lavender nipples.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Dracovixentaur"	"[PrepCombat_Dracovixentaur]"

to say PrepCombat_Dracovixentaur:
	setmongender 5; [creature is herm]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dracovixentaur"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Dracovixentaur" to infections of HybridList;
	add "Dracovixentaur" to infections of FurryList;
	add "Dracovixentaur" to infections of NatureList;
	add "Dracovixentaur" to infections of HermList;
	add "Dracovixentaur" to infections of TaperedCockList;
	add "Dracovixentaur" to infections of KnottedCockList;
	add "Dracovixentaur" to infections of SheathedCockList;
	add "Dracovixentaur" to infections of TaurList;
	add "Dracovixentaur" to infections of FlightList;
	add "Dracovixentaur" to infections of TailList;
	add "Dracovixentaur" to infections of OviImpregnatorList;
	add "Dracovixentaur" to infections of FirebreathList;
	add "Dracovixentaur" to infections of TailweaponList;
	now Name entry is "Dracovixentaur"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The dracovixentaur slams its tail into you, bashing you aside![or]The dracovixen rears up and slashes you with its foreclaws![or]It snaps and tears at you with its fangorious maw![or]The dracovixentaur punches you soundly in the jaw![or]The hybrid creature grabs you with its clawed hands and slams its armored head into yours. The head butt leaves you seeing stars for a moment.[or]The dracovixentaur slaps you soundly across the cheek![or]The hybrid creature grabs you with her clawed hands and slams your face into her bosom. The surprise motorboating leaves you momentarily dazed.[or]The dracovixen giggles and gives her breasts a tantalizing grope as she moves sexily around you.[at random]";
	now defeated entry is "[beattheDVtaur]"; [ Text when monster loses. ]
	now victory entry is "[losetoDVtaur0]"; [ Text when monster wins. ]
	now desc entry is "[DVtaurdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a mix of draconic and vulpine features blending into a sexy combination. You have a long, slender muzzle with a foxish grin. There are a pair of ivory horns which jut from the back of your head along with three smaller pairs below that. Tucked behind those are a pair of vulpine ears and long, flowing, lilac hair";
	now body entry is "considerably transformed, having gained a tauric lower half that is part dragon and part vixen in appearance. While your upper body largely resembles that of a sexy and fit human woman, your lower body is that of a hybridized dragon-fox";
	now skin entry is "lavender scales and lilac fur";
	now tail entry is "You have a fluffy fox tail that hides a powerfully draconic tail under its thick fur, with only the spaded tip poking out to reveal its hidden nature.";
	now cock entry is "[one of]ridged[or]draconic[or]pointed[or]tapered[or]knotted[or]sheathed[as decreasingly likely outcomes]";
	now face change entry is "you feel a powerful pounding at the top of your skull as your face grows flush with heat. As this grows worse, your face pushes outward and changes with several snaps and pops. A draconic muzzle forms as the pain in your skull suddenly fades as large horns push forth from the back of your head. Fox ears and long, lilac hair form behind those";
	now body change entry is "your body shifts and bends unnaturally into two sections. The upper half reforms into a feminine body with sexy curves and a fit physique. The lower section becomes that of a four-legged creature with a powerful frame and taloned paws for feet. Your hands are a cross between these and normal hands. Finding yourself with a dracovixentaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin grows thick and hard in places, forming heavy blue scales across limbs, back and sides. Across your chest[if BodyName of Player is listed in infections of TaurList], underbelly[end if], shoulders, hands and feet";
	now ass change entry is "strange twinges run up and down your spine. Each time these tingles run down, they seem to travel further and further down until the growth of your new, dracovulpine tail is complete";
	now cock change entry is "pulses and throbs with need. As you watch, it changes shape and becomes more tapered and gains a pointed, conical glans for pushing into its prey. Ridges form along the length of your cock for added stimulation as a knot swells at its base. Below your knot, your flesh reshapes itself to form a furry sheath to house your maleness. You find yourself looking forward to putting your new tool to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 13;
	now int entry is 13;
	now cha entry is 15;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 84; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 8; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 24; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 15; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "dracovixentaur milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]athletic[or]sexy[or]alluring[or]sleek[or]shapely[or]tauric[at random]";
	now type entry is "[one of]dracovixentaur[or]dracovixen[or]hybrid[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "DVtaur"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"DVtaur"	firebreath rule	--	--	DVtaurpounce rule	20	--	--	--	DVtaurscent rule	--

this is the DVtaurpounce rule:		[double-damage pouncing]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 57 ); [+75% damage]
	if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of]dracovixen[or]dracovixentaur[or]hybrid creature[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]shoving[purely at random] you down briefly. Its many talons claw at you while she giggles and presses her many breasts down atop you while roaring playfully. This [one of]painfully[or]viciously[or]devastatingly[purely at random] [one of]arousing[or]sexy[purely at random] assault does [special-style-2][dam][roman type] damage and aroused you further!";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of Player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	increase Libido of Player by a random number from 2 to 6;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;
	say "You are [descr].";


this is the DVtaurscent rule:
	choose row MonsterID from the Table of Random Critters;
	let playernum be Stamina of Player + level of Player + plmindbonus;
	if face mask is equipped, increase playernum by 4;
	let vixennum be cha entry + ( lev entry / 2 ) + monmindbonus;
	let playernum be a random number between 0 and playernum;
	let vixennum be a random number between 0 and vixennum;
	if vixennum > playernum:
		let dam be ( wdam entry + lev entry ) / 6;
		let mod be a random number between -2 and 2;
		let mod be mod / 2;
		let dam be dam + mod;
		say "[one of]The dracovixentaur's scent continues to turn you on[or]The scent of spices and perfume coming from the dracovixentaur further arouses you[or]You find yourself thinking of just dropping your hands and letting the dracovixentaur have her fun[or]The dracovixen's wonderful scent arouses your lusts[or]The sexy motion of alluring, vulpine dragon draws your eyes to her beautiful body and buxom breasts[at random][one of], making you less willing to keep fighting her[or] as sexy images of you and the dracovixentaur fill your thoughts[or], turning you on[or][at random]. You take [special-style-2][dam][roman type] damage!";
		decrease HP of Player by dam;
		increase Libido of Player by a random number from 1 to 4;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
		LineBreak;
		if HP of Player < 1:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			lose;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Dracovixentaur Infection"	"Infection"	""	Dracovixentaur Infection rule	1000	false

This is the Dracovixentaur Infection rule:
	if Player has a body of "Dracovixentaur":
		if humanity of Player < 10:
			if HP of Sam >= 10 and HP of Sam <= 29:
				say "***Succumb w/Sam as Dragontaur. Should not be possible.";
			else if HP of Sam >= 30 and HP of Sam <= 49:
				say "***Succumb w/Sam as Vixentaur. Should not be possible.";
			else if HP of Sam >= 50 and HP of Sam <= 69:
				if Player is herm:
					say "     As you lose your humanity to your increasingly dracovixentaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral hybrids. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. You breed with the dracovixentaur often, swapping roles as top or bottom to ensure you're both well bred. You do make forays with her out into the city often, siring plenty of offspring of your own in the many sexy females and herms you find out there. While the many offspring you both have are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dracovixentaurs in the area grow to be the most frequent of the three.";
				else if Player is female:
					say "     As you lose your humanity to your increasingly dracovixentaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral hybrids. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. You are bred by the dracovixentaur often, filling you plump with numerous eggs and/or kits most of the time. You do make forays with her out into the city often, getting mounted by other males while Sam partakes in the females. While the many offspring you both have are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dracovixentaurs in the area grow to be the most frequent of the three.";
				else if Player is male:
					say "     As you lose your humanity to your increasingly dracovixentaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral hybrids. While Sam does maintain more of his old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. She allows you to mount her and breed her often, keeping her heavy with numerous eggs and/or kits most of the time. You do make forays with her out into the city often, enjoying mounting and breeding many of the females you find with her. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dracovixentaurs in the area grow to be the most frequent of the three.";
				else:
					say "     As you lose your humanity to your increasingly dracovixentaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as increasingly feral hybrids. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. Lacking any defined gender of your own, you often act at the administrator to the dracovixen's lair, monitoring her offspring and her projects. You also enjoy the role of servicing the powerful herm, particularly enjoying to lick her clean after returning from an expedition into the city, sucking her cock or licking the leaking cum from her well-used pussy. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dracovixentaurs in the area grow to be the most frequent of the three.";
		else:
			if HP of Sam >= 10 and HP of Sam <= 29:
				say "***Survive w/Sam as Dragontaur. Should not be possible.";
				say "     You are able, through the strong connection Sam shares with you, to convince the dragontaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in his time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of his rather enthusiastic work.";
				say "     You and Sam continue his work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs, litters of vixentaurs and broods of dracovixentaurs start popping up in those areas as well, then all the better[if Player is female]. As Sam's mate, you give birth of many offspring as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[end if].";
			else if HP of Sam >= 30 and HP of Sam <= 49:
				say "***Survive w/Sam as Vixentaur. Should not be possible.";
				say "     You are able, through the strong connection Sam shares with you, to convince the vixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs, litters of vixentaurs and broods of dracovixentaurs start popping up in those areas as well, then all the better[if Player is male]. As Sam's mate, you enjoy siring several offspring in her as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[end if].";
			else if HP of Sam >= 50 and HP of Sam <= 69:
				say "     You are able, through the strong connection Sam shares with you, to convince the dracovixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs, litters of vixentaurs and broods of dracovixentaurs start popping up in those areas as well, then all the better[if Player is herm]. As Sam's mate, you enjoy siring several offspring in her as well as having her breed you with them, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if Player is male]. As Sam's mate, you enjoy siring several clutches and litters in her as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if Player is female]. As Sam's mate, you enjoy getting bred with many of her offspring as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[end if].";


Dracovixentaur ends here.
