/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR endurance = 0
VAR like = 0
VAR time = 0
VAR day = 0
VAR clean = false
VAR food = false
VAR repair = false
VAR map_piece = false
VAR shell_sword = false
VAR compass = false

-> invasion

== invasion ==
In the distance, you hear a bell ring. Your parents have prepared you for this day.
Pirates! They're here!
Everyone around you is running away, but you're heading straight towards the water.
For your entire life, you've always admired pirates. Now, if you play your cards right, you can become one!
* [I've always wanted to be a pirate!] -> pirate_happy
* [Being a pirate would be cool I guess.] -> pirate_sad

== pirate_happy ==
You leap and bound with joy as you head to the docks.
Your dream! It's right here! You can do it!
* [I can do it!] -> pirate_introduction

== pirate_sad ==
You walk to the docks, taking note of the cloudy sky and relating heavily to it.
You must be thinking "Mmmm, clouds. Looks like rain. I could totally be reading right now."
Well now's not that time! You're about to be a pirate!
* [OMG you're right! I'm about to be a pirate!] -> pirate_introduction

== pirate_introduction ==
You get to the docks, and it's everything you have ever wished for. People with wooden legs and metal hooks for hands, and parrots. SO MANY PARROTS. All of the pirates, running around and setting fire to the houses in the place you once called home.
Who cares! The seas are about to be your home, land claims and mortgages are for the sheep that graze on the now smoking grass.
You walk up to the pirates and introduce yourself.
They stop their plundering and burning and look at you, then they look at their parrots, and then they all start laughing.
The closest pirate to you says, "If ye want to talk to us, all ye got to do is light stuff on fire!"
What a simple task!
* [Light the grass on fire] -> grass_fire
* [Light a house on fire] -> house_fire
* [Light the closest pirate on fire] -> pirate_fire
* [Don't light anything on fire] -> buzzkill_ending

== grass_fire ==
You grab a torch from the docks and squat down to light the grass on fire.
With perfect skill, and with a circle forming around you to watch, you burn a smiley face in the grass.
You hear murmors around you, catching words like "Natural!" and "Just like Captain Giggles!"
* ["Who's Captain Giggles?"] -> cap_giggles_1

== house_fire ==
You grab a torch from the docks and head to your neighbor's house, who you have hated since you both were kids.
He was really bad at kickball, and you made sure to let him know that.
You toss the torch into his house, and it explodes. A kickball lands in your hands, and you toss it into the ocean.
* [It's not like he was using that anyways.] -> cap_giggles_1

== pirate_fire ==
You grab a torch from the docks and go back to the closest pirate, who's trying to get his parrot to land on his shoulder.
He has two wooden legs, a metal hook hand, and a hair full of beautiful, luscious hair.
You light him on fire.
Everyone turns and laughs at the pirate, who panics and runs (more like stumbles!) into the water. He gets out safe, but drenched and bald.
The next closest pirate to you looks at your torch and slowly backs away.
* [Stare them down.] -> cap_giggles_1

== buzzkill_ending ==
"Man, you're boring. We don't want you with us."
All of the pirates stop what they are doing and stare at you while they shake their heads.
The captain, Captain Giggles, looks disappointed. His t-rex puppet looks even more disappointed.
You ruined your one and only chance of becoming a pirate.
Maybe you should teach your neighbor how to play kickball if his house survives.
-> END

== cap_giggles_1 ==
Suddenly, everyone around you stops. The only sounds you hear are the fires crackling, the parrots squawking, and maniacal laughter in the distance.
The laughing gets closer. You see the source of it, a pirate with a t-rex puppet on his hand, a really, really big hat on his head, and a yellow smiley face mask.
When the pirate stops next to you, he removes his mask to reveal a face, scarred from many days at sea.
Either that or just from a lot of giggling.
"I'm the captain of this crew, Captain Giggles. One of my pirates tells me that ye want to be a pirate?"
* ["Yes, cap'n! I do!"] -> cap_giggles_2
* [Say nothing] -> cap_giggles_2

== cap_giggles_2 ==
Captain Giggles lets out a hearty laugh, but suddenly he stops.
He raises his t-rex puppet hand up to your face, and it says to you "Mumble mumble mumble, roar!!!"
Captain Giggles can barely contain his laughter, along with the entire crew.
It's taking all of your might to not cry because of how hilarious this is.
Captain Giggles recovers from his laughter, and quickly decides to take you on board.
As he offers you a position, he holds out his un-puppeted hand.
* [Shake his hand] -> dino_shake
* [Stare at him blankly] -> boarding

== dino_shake ==
As you go to shake your new captain's hand, something grabs your other hand.
You look at it.
Captain Giggles giggles.
His t-rex puppet is biting your hand.
* [This is going to be a recurring thing, isn't it?] -> boarding

== boarding ==
Captain Giggles turns away from you abruptly and everyone around you starts heading back to the ship.
If you could even call it that.
This "pirate ship" is half ship, half fish. The back end of it has been restructured to look like fish fins, and the flag is a typical pirate flag, but with an angry face instead of a skull.
You don't regret this one bit, it's perfect for you!
You board the ship, which you call the S.S. Fishie, and follow Captain Giggles to meet the crewmate that's going to watch over you for a bit.
* [Make a joke] -> jokes
* [Follow Captain Giggles quietly] -> meet_Jeoffrehelm

== jokes ==
To pass the time, you try to tell some really good jokes that you thought of in your spare time back home.
Hopefully everyone likes them!
+ ["Why couldn't the child watch the new pirate movie? Because it was rated Rrrrrr!"] -> bad_joke
+ ["What is a pirate's favorite letter? Rrrrrr!"] -> bad_joke
+ ["What's a pirate's favorite body part? The Booty!"] -> bad_joke
+ ["What's hawk one plus hawk two, with a canadian accent? Hawk Two-uh!"] -> good_joke

== bad_joke ==
~ like = like - 1
You tell your pirate joke, ready to accept all of the compliments for how great it was.
That's not what happened at all.
Everyone stopped and looked at you, and Captain Giggles {day == 0:turns towards you.|and Captain Evilface turn towards you.}
"We do NOT ever tell those kinds of jokes. They are offensive, stupid, and just factually incorrect."
+ [Tell another pirate joke to try to defuse the situation] -> walk_the_plank
+ {day == 0} [Apologize to everyone and try to move on] -> meet_Jeoffrehelm
+ {day == 3} [Apologize to everyone and try to move on] -> duel_end

== walk_the_plank ==
You've angered {day == 0:Captain Giggles and his crew for the last time.|all the pirates for the last time.} Your journey as a pirate was a very short and very eventful one.
Lucky for you, the captain seems to take mercy on you. He wants you to follow him to the tail fin.
Surely the view is so beautiful that he wants to share it with you, right?
Nope.
There's just a plank. The view is obstructed by the terrible design of the ship.
Captain Giggles {like > 3: reluctantly} pushes you towards the plank, and you take your final steps.
Maybe in the next life you'll be a better pirate!
-> END

== good_joke ==
~ like = like + 1
The crew erupts in laughter, everyone loved your joke!
If you keep this up, you may have a crew of your own!
"Good one, kid!" Captain Giggles pats you on your back and congratulates you. 
This is the best moment of your life.
+ {day == 0} [Continue with your day, even though it cannot possibly be better than this] -> meet_Jeoffrehelm
+ {day == 3} [Continue with your day, even though it cannot possibly be better than this] -> duel_end

== meet_Jeoffrehelm ==
You and Captain Giggles meet Jeoffrehelm, the crewmate tasked with watching over you for the start of your pirate journey.
Jeoffrehelm, or Jeoffrehelmehelm, as he likes to be called, seems untrustworthy. You get the feeling that he's a little evil.
Hm.
Oh well! He's with Captain Giggles, so obviously this is just a prank or a wrong feeling.
You and Jeoffrehelmehelm talk about your tasks for the next few days.
He also invites you to the work groupchat he made with ParrotChat, the new form of Pirate Social Media that uses parrots to send messages to others!
* [Accept ParrotChat invitation] -> parrotchat
* [Decline ParrotChat invitation] -> work_deets

== parrotchat ==
"Hooray! I'm so glad I get to include you in this. Me and the other crewmates have been trying to get this up and running for a while now. Who would've thought that parrot mail was going to be slower than snail mail?"
Jeoffrehelmehelm doesn't understand how mail works.
* [Congratulate Jeoffrehelmehelm on starting a new business idea] -> work_deets

== work_deets ==
Jeoffrehelmehelm gives you the run down on your daily tasks.
"In any order, just make sure they get done.
First, the decks need to be cleaned. There's a mop in the side fin, you can just use the sea water to wet it.
Second, Captain Giggles's cat, Twix, needs to be fed. Her food is right outside of the captain's quarters next to her food bowl. It's also right next to the dead bugs we feed our prisoners. Don't mix them up, please.
And finally, our night driver is pretty reckless sometimes. Might be because he's blind, but I think it's because he hates the ship's design. Every day someone needs to climb down the sides of the ships and clear it of any rocks that may be there. Most of the time it's empty, but sometimes there are some major problems with it.
Hopefully you understood all of that. Words are hard, but work is harder."
At least there aren't taxes on the high sea! Maybe.
"Well, that's it for now. It's been a long day, why don't you go get some sleep? Tomorrow's going to be even longer."
* [Find Twix] -> twix1
* [Go to sleep] -> morning

== twix1 ==
You decide to search for Twix.
After a looking for a while, you find her curled up near the ledge of the ship, sleeping in the moonlight.
You don't want to wake her up, so you decide to go to sleep anyways.
* [Go to sleep] -> morning

== morning ==
~ time = 0
~ day = day + 1
~ clean = false
~ food = false
~ repair = false
{stopping:
- You wake to the sound of even more bells ringing, more than yesterday.
    For a second, you forget where you are. Then a splash of water hits you and you remember.
    Jeoffrehelmehelm wakes you up rudely and pulls you out of bed and onto the deck.
-
}
"You remember your jobs, right kid?"
+ ["Yes"] -> daytime
+ ["No"] -> jobs

== jobs ==
"First, the decks need to be cleaned. There's a mop in the side fin, you can just use the sea water to wet it.
Second, Captain Giggles's cat, Twix, needs to be fed. Her food is right outside of the captain's quarters next to her food bowl. It's also right next to the dead bugs we feed our prisoners. Don't mix them up, please.
And finally, our night driver is pretty reckless sometimes. Might be because he's blind, but I think it's because he hates the ship's design. Every day someone needs to climb down the sides of the ships and clear it of any rocks that may be there. Most of the time it's empty, but sometimes there are some major problems with it."
-> morning

== daytime ==
{stopping:
- Many pirates are scrambling about, trying to get their jobs done. Nobody talks to you until they finish their jobs, which seems like it is going to be a while.
-
}
{not clean: The decks are filthy.}
{not food: Twix is meowing loudly for more food.}
{not repair: A slight rumbling is heard off the side of the ship.}
+ {not clean} [Clean the decks] -> clean_decks
+ {not food} [Feed Twix] -> feed_twix
+ {not repair} [Repair ship] -> repair_ship

== clean_decks ==
~ clean = true
~ time = time + 1
{stopping:
- You grab the mop and start cleaning the decks. It's gross and disgusting. You hate it here, but only momentarily.
-
}
+ {time == 3} [Finish cleaning] -> nighttime
+ {time != 3} [Finish cleaning] -> daytime

== feed_twix
~ food = true
~ time = time + 1
{stopping:
- You find Twix sleeping next to her food bowl despite it being very bright outside. Maybe you should learn to be like her sometimes. You take her food bowl and fill it up, and Twix jumps upwards and starts eating it before you're done filling it up.
- As you're feeding Twix, you notice Captain Giggles's door was left open.
-
}
+ {time == 3} [Finish feeding Twix] -> nighttime
+ {time != 3} [Finish feeding Twix] -> daytime
* {day == 2} [Peek inside the captain's quarters] -> cap_qrtrs

== cap_qrtrs ==
~ time = time - 1
You decide to look inside of the captain's quarters, and nobody is inside. Going further inside, you notice a bunch of papers on the table.
Your nose starts to feel a little funny. Oh no! Your allergies!
If someone finds you in here, you're done for.
* [Take a piece of paper to cover your nose as you sneeze] -> stolen_map
* [Leave the cabin and sneeze] -> not_stolen

== stolen_map ==
~ map_piece = true
You take a torn piece of paper from the table, surely it couldn't be that important.
You cover your nose with the paper...
And you don't sneeze. You  hate it when that happens.
Oh well, may as well keep this in case you need to sneeze later.
* [Go back to feeding Twix] -> feed_twix

== not_stolen ==
You exit the captain's quarters, and you let out a huge sneeze. It scares everyone on the ship, and Jeoffrehelmehelm thinks that the ship is under attack.
Maybe you should stay out of the captain's quarters for now.
* [Go back to feeding Twix] -> feed_twix

== repair_ship ==
~ repair = true
~ time = time + 1
{stopping:
- You head down the side of the ship to make any necessary repairs. Luckily for you, there's no damage today!
- You head down the side of the ship to make any necessary repairs. Looks like today's going to be a rough one, because there are hundreds of rocks jammed into the front. Maybe we should get a night driver who can see.
- You head down the side of the ship, hoping it's not like how it was yesterday. Something's different though. There are a few rocks, but there's also a sword stuck in the hull.
-
}
+ {time == 3} [Finish repairing] -> nighttime
+ {time != 3} [Finish repairing] -> daytime
* {day == 3} [Take sword] -> shellsword

== shellsword ==
~ time = time - 1
You pry the sword out of the hull, taking care not to cut yourself on the seashell hilt. It's a beautiful sword.
You hide it underneath your shirt as you make your way back over to the rocks.
* [Go back to clearing the rocks] -> repair_ship

== nighttime ==
You feel something change within you. Maybe it's pride for getting a full day of work done, or maybe it's a level-up screen?
Don't worry about what a level-up screen is.
+ [Increase endurance] -> endup
+ [Increase likeability] -> likeup

== endup ==
~ endurance = endurance + 1
You choose to increase your endurance, believing that never giving up is the best possible thing you can do.
-> nighttime2

== likeup ==
~ like = like + 1
You choose to increase your likeability, knowing that poeple love to be around those that they like.
-> nighttime2

== nighttime2 ==
After a full day of cleaning, {endurance < 2:you are exhausted|you feel like you could do some more}.
You see some crewmates gathered around a table, playing cards.
Your bed is calling for you.
{map_piece && (day == 2): However, before you can leave, Captain Giggles storms into the crew members' quarters.}
+ {(endurance >= 2) && not map_piece} [Play cards] -> cards
+ {(day != 3) && not map_piece} [Go to sleep] -> morning
* {day == 3} [Go to sleep] -> raid_morning
* {map_piece && (day == 2)} [Follow Captain Giggles onto the deck] -> map_consequence

== map_consequence ==
"Some of you," says Captain Giggles, "think it's okay to take what's not yours."
At this point you notice Captain Giggles's dinosaur puppet is gone. This is bad. Really bad.
"You all know we are searching for the Golden Banana, a treasure so coveted that it can make anybody a king.
So I want to know. Which one of you took my map?"
You gulp. That wasn't a tissue you took. That must have been his map. Oh no.
Jimmy, the newest pirate before you, sneezes next to you, just as loud as you did earlier that day.
"You. It had to have been you. You think you can just go through my things without getting caught?
You can't even hide the map that well! I see it in your shirt!"
Jimmy has a tissue in his shirt.
"It's a good thing I have that map memorized, Jimmy. I don't need that map anymore, and I don't need you anymore. Let's go."
They both move towards the back of the ship, and you hear Jimmy yell.
Then a splash.
Then Captain Giggles walks back towards the crew and says, "Let that be a lesson. Don't steal from your captain."
* [Pretend nothing happened and play cards] -> cards
* [Go to sleep and regret stealing the map] -> morning

== cards ==
~ like = like + 1
The crew members look at you, and their respect for you grows.
You lose horrificly to them at cards. Maybe one day you'll learn how to play this game.
+ {day != 3} [Go to sleep] -> morning
* {day == 3} [Go to sleep] -> raid_morning

== raid_morning ==
You wake up, finally feeling refreshed. You are so happy to be here.
You're so glad that nothing could possibly change this.
* [Get up] -> raid_day

== raid_day ==
Oh boy, today was a really bad time to start liking it here.
You get on the decks, and you see pirates running around, parrots flapping about, and Twix just being Twix.
In the distance, you see a ship. This one doesn't look good.
You can tell, just by the way this is moving, that this is the ship of the terrifying Captain Evilface, a pirate you've heard stories about since you first showed interest in pirates.
And Captain Evilface is heading straight for your ship.
* [Prepare for an epic battle!] -> raid_day2

== raid_day2 ==
There was absolutely nothing you and the other crewmates could do.
Captain Evilface is too evil for Captain Giggles. 
The two have been dueling for hours, and it looks like Captain Evilface will win.
Both crews have just given up fighting for now and have started playing cards while watching the duel.
* [Look over the fallen pirates] -> compass_spot
+ [Tell a joke] -> jokes
* [Continue playing cards] -> duel_end

== compass_spot ==
While you wander around the fallen pirates, you spot something shining from the sunlight. You pick it up, and notice a compass!
Twix seems to be staring at it, her eyes just following the constantly moving needle as the ship rocks.
* [Keep the compass] -> compass_get
* [Don't keep the compass] -> compass_toss

== compass_get ==
~ compass = true
You place the compass in your pocket, and Twix starts following you.
You think she wants to play with the compass, so you attach it to a string so it won't fall off and she can watch it.
* [Go back to playing cards] -> duel_end

== compass_toss ==
You don't want to keep the compass. You toss it on the ground next to Twix and let her have her fun with it.
You go back to the other pirates.
* [Go back to playing cards] -> duel_end

== duel_end ==
Just as two identical sharks fighting each other, both captains decide to end the duel in a draw. Captain Giggles, although silly, is undeniably strong. Captain Evilface is just plain evil.
Many of both crews are dead from the initial fighitng.
Captain Evilface, maintaining his evilness, offers Captain Giggles's crewmates a new job.
"How would you all like to join my crew? If you think Captain Laughter of here can find the Golden Banana before me, then you are all sadly mistaken."
Captain Giggles, angered by this, says "You know it's Captain Giggles. And my crew won't leave me! They like my jokes! They hate evil!"
Captain Evilface looks right at you.
"How about you?"
* [Decline his invitation] -> stay_giggles
* [Accept his invitation] -> leave_giggles

== stay_giggles ==
You chose to stay with Captain Giggles
"Hah! I knew it!"
Captain Giggles is delighted to hear that you are staying with him.
Captain Evilface is disappointed, and leaves without another word. His crew takes all of the cards with them.
"Now," says Captain Giggles, "let's find this Golden Banana. We're almost there."
Jeoffrehelmehelm is nowhere to be seen.
* [Go to sleep] -> gb_morning1
* {compass} [Play with Twix] -> twix2

== twix2 ==
You pull out your new compass and swing it around for Twix to play with. Hours pass of you just watching her play with the compass.
* [Go to sleep] -> gb_morning1

== gb_morning1 ==
As you awake on Captain Giggles's ship, you hear the sound of monkeys.
Getting out of bed and onto the deck, you see a huge island close by. You and Captain Giggles are the only two on the ship.
Everyone else is getting attacked by the monkeys on the shore.
"Looks like they weren't funny enough!
Listen kid, if we're going to get past those monkeys, we are going to need some jokes. Monkeys love jokes.
And I'll let you tell some jokes. They can be offensive. The guardian monkeys love offensive jokes. Especially about pirates."
You know what you must do.
* [Prepare your jokes] -> gb_beach1
* [Go to shore with no jokes] -> destroyed_by_monkeys

== destroyed_by_monkeys ==
You walk along the shore, hoping to get past the monkeys without needing any jokes.
One spots you, and you start running away.
It uses its tail to launch itself at you, and you get knocked out as it hits you right in the head.
-> END

== gb_beach1 ==
You've been preparing for this moment. You have four jokes at your disposal, all surely to be loved by the guardians of the Golden Banana.
You step onto the shore with Captain Giggles, and start running for the cave.
Two of the monkeys land in your path.
* [Look at your list of jokes] -> jokes2
* [Attack the monkeys] -> failure

== failure ==
Going to attack the monkeys just earns you a swift tail to the face.
Nice try.
You've been knocked out and are now at the mercy of the guardians.
-> END

== jokes2 ==
Your list of jokes has {four jokes|two jokes|one joke|no jokes} .
* ["Why couldn't the child watch the new pirate movie? Because it was rated Rrrrrr!"] -> gb_goodjoke
* ["What is a pirate's favorite letter? Rrrrrr!"] -> gb_goodjoke
* ["What's a pirate's favorite body part? The Booty!"] -> gb_goodjoke
* ["What's hawk one plus hawk two, with a canadian accent? Hawk Two-uh!"] -> gb_badjoke

== gb_badjoke ==
The guardians did not like your joke. Captain Giggles giggles next to you.
They storm you, and you cannot believe that your last words were "Hawk Tuah."
-> END

== gb_goodjoke ==
The monkeys let you pass, looking at each other and smiling because of how funny your joke was. Good job!
You don't find anymore monkeys blocking your path, so you and Captain Giggles make it into the cave safe and sound.
You both see the golden banana, sitting atop its throne on top of a pile of gold.
* [Go for the golden banana] -> gb_cave
* [Stand watch] -> gb_cave

== gb_cave ==
Captain Evilface enters the cave soon after you and Captain Giggles.
"What, you thought that would be the last you'd see of me? I'm Captain Evilface! I'm Evil!"
You do agree with that. He does seem pretty evil.
An epic fight of magnificent proportions begins, and you are left to watch off on the side.
Both are equally matched, and both are equally injured at the end of the fight.
Captain Giggles, who landed next to you after the right ended, tells you to grab the Golden Banana and take his place as captain.
After all, you deserve it.
* [Take the Golden Banana] -> finale_good
* [Run away] -> finale_bad1

== finale_good ==
You take the golden banana, and the fighting outside of the cave stops. Pirates from both ships enter the cave, and see you holding the golden banana.
{like > 2:Everyone starts clapping. Ever since you joined the crew, the other pirates have been happier and more joyful. Even Captain Evilface's crew likes you. They all silently agree to follow you, as nobody is better fit to lead pirates than you, Captain Reallybadatcards!|They look disappointed. You never did anything to lead them, you never spent time with them. You just kept your head down and did your work. Did you really think you could lead a pirate ship like that?}
-> END

== finale_bad1 ==
You have avoided all of your problems in the past by running away, so what's the difference now> You aren't ready to be a captain, you know that.
You slowly back away from Captain Giggles, turning quickly and leaving the cave. You take a row boat from the S.S. Fishie and make your way across the sea, looking for some new land you can stay at for a bit and then run away from at the next sight of trouble.
-> END

== leave_giggles ==
You chose to leave Captain Giggles.
"Good choice, swabbie." Captain Evilface is no where near as nice as Captain Giggles.
You feel like you made a mistake, but there's nothing you can do now.
You board the new ship, unnamed because that would be too much fun, and accept your new life as an evil pirate.
* [Go to sleep] -> finale_bad2
* {shell_sword} [Challenge Captain Evilface to a duel] -> epic_duel

== finale_bad2 ==
You go to bed, noting that the bed next to you is occupied by Jeoffrehelmehelm. You knew he was evil, but not this evil.
You guess you are that evil now too.
You live out the rest of your life on a crusade of terrible actions, insults, and general unhappiness. Captain Evilface is so evil that he only lets crewmates use the bathroom once a day.
You deeply regret your actions, hoping that you can take it all back.
But it's too late.
-> END

== epic_duel ==
You pull out your seashell sword and openly challenge Captian Evilface to a duel.
"Murmur, murmur!"
The crewmates around you all start murmoring about the sword you're holding, previously thought to only be in the stories.
You feel empowered, your seashell sword glowing in the face of evil.
You will cure the scourge that is Captain Evilface!
The captain accepts your duel, and he pulls out a flintlock.
"Did you really think I wouldn't bring a gun to a sword fight? Bye, swabbie. You were a mistake."
* [Accept your fate] -> block
* [Dodge]  -> block

== block ==
As Captain Evilface fires the flintlock, the Seashell Sword glows even brighter. It flies up in front of you and cuts the bullet in half.
His face is one of shock, and he fires again and again and again.
All of his bullets are cut in half. You and your legendary sword, awakened in the face of evil, approach Captain Evilface.
He falls down and starts begging for mercy.
* [No mercy] -> finale_goodish
* [Show mercy] -> finale_great

== finale_goodish ==
You show no mercy, and pick up Captain Evilface.
You take him to the more conveniently placed plank, and force him to walk.
The crew cheers you on, calling out "Captain Shell! Captain Shell! Captain Shell!"
No doubt named after your sword, which has returned to your hand.
Who knew meaningless tasks would help so much in your life?
Captain Evilface walks the plank, and you have cleansed the disease that is evil on this boat.
Good job, Captain Shell.
-> END

== finale_great ==
You, being a pirate taught from Captain Giggles, show mercy. The crew is delighted to see you best Captain Evilface.
You toss him into the jail below the deck, and you pass out cards to play a nice game with your new crew.
You lose terribly.
Captain Reallybadatcards, new captain of the newly named Scourgecleanser, is really bad at cards.
Some time later, you meet up with Captain Giggles at the island of the Golden Banana. He has claimed his treasure, and you give him another in the form of a prisoner: Jeoffrehelmehelm.
You both leave Captain Evilface to fend for himself with the guardians of the Golden Banana, and walk into the sunset, hand in hand.
* [Make a joke] -> jokes3

== jokes3 ==
You go to make a joke, and Captain Giggles stops you.
"This is not your strong suit. Please. Do not make a joke."
You sadly agree.
-> END
