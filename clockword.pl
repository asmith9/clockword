use Irssi;
use Irssi::Irc;
#use strict;
use warnings;
use vars qw($VERSION %IRSSI);
$VERSION="0.0.1";
%IRSSI = (
	authors	=> 'dan',
	contact	=> 'xeon826@gmail.com',
	name	=> 'alame',
	description	=> 'Converts towards nadsat speech',
	license	=> 'GPL v2',
	url	=> 'http://',
);


# USAGE:
# /alame <text>
# writes "text" in lamespeech to the current channel

sub cmd_lamer {
  my ($data, $server, $witem) = @_;
  if (!$server || !$server->{connected}) {
    Irssi::print("Not connected to server");
    return;
  }
  if ($data) {
    my $x; $_=$data; s/./$x=rand(6); $x>3?lc($&):uc($&)/eg; 
    s/apology/appypolly/gi; 
    s/woman/baboochka/gi; 
    s/bad/baddiwad/gi;
    s/band/banda/gi;
    s/mad/bezoomny/gi;
    s/library/biblio/gi;
    s/battle/bitva/gi;
    s/god/bog/gi;
    s/sick/bolnoy/gi;
    s/big/bolshy/gi;
    s/bastard/bratchny/gi;
    s/brother/bratty/gi;
    s/razor/britva/gi;
    s/belly/brooko/gi;
    s/throw/brosay/gi;
    s/rich/bugatty/gi;
    s/shit/cal/gi;
    s/cigarette/cancer/gi;
    s/office/cantora/gi;
    s/pocket/carman/gi;
    s/tea/chai/gi;
    s/priest/charlie/gi;
    s/cup/chasha/gi;
    s/guard/chasso/gi;
    s/woman/cheena/gi;
    s/wash/cheest/gi;
    s/fellow/chelloveck/gi;
    s/nonsense/chepooka/gi;
    s/wonderful/choodessny/gi;
    s/mumble/chumble/gi;
    s/knock/clop/gi;
    s/beak/cluve/gi;
    s/bell/collocol/gi;
    s/yowl/crark/gi;
    s/steal/crast/gi;
    s/scream/creech/gi;
    s/money/cutter/gi;
    s/lady/dama/gi;
    s/old/ded/gi;
    s/money/deng/gi;
    s/girl/devotchka/gi;
    s/good/dobby/gi;
    s/house/domy/gi;
    s/ghost/dook/gi;
    s/valuable/dorogoy/gi;
    s/fight/drat/gi;
    s/drug/drencrom/gi;
    s/friend/droog/gi;
    s/two/dva/gi;
    s/game/eegra/gi;
    s/name/eemya/gi;
    s/egg/eggiweg/gi;
    s/mum/em/gi;
    s/tired/fagged/gi;
    s/play/filly/gi;
    s/drink/firegold/gi;
    s/trout/forella/gi;
    s/newspaper/gazetta/gi;
    s/eye/glazz/gi;
    s/stupid/gloopy/gi;
    s/priest/godman/gi;
    s/dollar/golly/gi;
    s/voice/goloss/gi;
    s/lip/goober/gi;
    s/walk/gooly/gi;
    s/throat/gorlo/gi;
    s/speak/govoreet/gi;
    s/dirty/grazhny/gi;
    s/soiled/grazzy/gi;
    s/loud/gromky/gi;
    s/breast/groody/gi;
    s/group/gruppa/gi;
    s/laugh/guff/gi;
    s/head/gulliver/gi;
    s/guts/guttiwuts/gi;
    s/korm/hen/gi;
    s/cry/horn/gi;
    s/good/horrorshow/gi;
    s/horny/hound/gi;
    s/sex/in-out-in-out/gi;
    s/interest/interessovat/gi;
    s/go/itty/gi;
    s/jam/jammiwam/gi;
    s/life/jeezny/gi;
    s/potatoes/kartoffel/gi;
    s/guts/keeshkas/gi;
    s/bread/kleb/gi;
    s/key/klootch/gi;
    s/button/knopka/gi;
    s/dig/kopat/gi;
    s/cat/koshka/gi;
    s/tomcat/kot/gi;
    s/blood/krovvy/gi;
    s/buy/kupet/gi;
    s/paw/lapa/gi;
    s/people/lewdies/gi;
    s/crone/lighter/gi;
    s/face/litso/gi;
    s/slice/lomtick/gi;
    s/caught/loveted/gi;
    s/making/lubbilubbing/gi;
    s/glory/luscious/gi;
    s/boy/malchick/gi;
    s/little/malenky/gi;
    s/butter/maslo/gi;
    s/filthy/merzky/gi;
    s/thought/messel/gi;
    s/place/mesto/gi;
    s/policeman/millicent/gi;
    s/minute/minoota/gi;
    s/young/molodoy/gi;
    s/milk/moloko/gi;
    s/man/moodge/gi;
    s/snout/morder/gi;
    s/snack/mounch/gi;
    s/brain/mozg/gi;
    s/begin/nachinat/gi;
    s/arrogant/nadmenny/gi;
    s/teenage/nadsat/gi;
    s/naked/nagoy/gi;
    s/fool/nazz/gi;
    s/underpants/neezhnies/gi;
    s/night/nochy/gi;
    s/foot/noga/gi;
    s/knife/nozh/gi;
    s/scent/nuking/gi;
    s/-knocky/oddy/gi;
    s/one/odin/gi;
    s/window/okno/gi;
    s/kill/oobivat/gi;
    s/leave/ookadeet/gi;
    s/ear/ooko/gi;
    s/clever/oomny/gi;
    s/terrible/oozhassny/gi;
    s/chain/oozy/gi;
    s/man/orange/gi;
    s/dry/osoosh/gi;
    s/eyeglasses/otchkies/gi;
    s/-handle/pan/gi;
    s/father/pee/gi;
    s/drink/peet/gi;
    s/food/pishcha/gi;
    s/cry/platch/gi;
    s/clothes/platties/gi;
    s/prisoner/plenny/gi;
    s/splash/plesk/gi;
    s/shoulder/pletcho/gi;
    s/flesh/plott/gi;
    s/pillow/podooshka/gi;
    s/sex/pol/gi;
    s/useful/polezny/gi;
    s/skeleton/polyclef/gi;
    s/understand/pony/gi;
    s/scared/poogly/gi;
    s/gun/pooshka/gi;
    s/-disk/pop/gi;
    s/criminal/prestoopnik/gi;
    s/polly/pretty/gi;
    s/lead/privodeet/gi;
    s/produce/prod/gi;
    s/girl/ptitsa/gi;
    s/drunk/pyahnitsa/gi;
    s/work/rabbit/gi;
    s/joy/radosty/gi;
    s/story/raskazz/gi;
    s/mind/rasoodock/gi;
    s/time/raz/gi;
    s/upset/razdrez/gi;
    s/rip/razrez/gi;
    s/hand/rooker/gi;
    s/mouth/rot/gi;
    s/policeman/rozz/gi;
    s/shoe/sabog/gi;
    s/sugar/sakar/gi;
    s/generous/sammy/gi;
    s/sarcastic/sarky/gi;
    s/"cow/scoteena/gi;
    s/gang/shaika/gi;
    s/female/sharp/gi;
    s/balls/sharries/gi;
    s/pole/shest/gi;
    s/concern/shilarny/gi;
    s/slice/shive/gi;
    s/neck/shiyah/gi;
    s/club/shlaga/gi;
    s/hat/shlapa/gi;
    s/helmet/shlem/gi;
    s/noise/shoom/gi;
    s/fool/shoot/gi;
    s/movies/sinny/gi;
    s/say/skazat/gi;
    s/school/skolliwoll/gi;
    s/quick/skorry/gi;
    s/scratching/skriking/gi;
    s/grab/skvat/gi;
    s/sweet/sladky/gi;
    s/happen/sloochat/gi;
    s/listen/slooshy/gi;
    s/word/slovo/gi;
    s/laugh/smeck/gi;
    s/look/smot/gi;
    s/dream/sneety/gi;
    s/tobacco/snoutie/gi;
    s/kill/snuff/gi;
    s/gather/sobirat/gi;
    s/bastard/sod/gi;
    s/fucking/sodding/gi;
    s/woman/soomka/gi;
    s/advice/soviet/gi;
    s/spatchka/spat/gi;
    s/Terrified/Spoogy/gi;
    s/jail/staja/gi;
    s/old/starry/gi;
    s/horror/strack/gi;
    s/drug/synthmesc/gi;
    s/waist/tally/gi;
    s/handkerchief/tashtook/gi;
    s/cup/tass/gi;
    s/hit/tolchock/gi;
    s/slippers/toofles/gi;
    s/three/tree/gi;
    s/cook/vareet/gi;
    s/washroom/vaysay/gi;
    s/guy/veck/gi;
    s/a particular/vellocet/gi;
    s/thing/veshch/gi;
    s/see/viddy/gi;
    s/hair/voloss/gi;
    s/smell/von/gi;
    s/harm/vred/gi;
    s/song/warble/gi;
    s/hole/yahma/gi;
    s/jew/yahoody/gi;
    s/tongue/yahzick/gi;
    s/balls/yarbles/gi;
    s/drive/yeckate/gi;
    s/remarkable/zammechat/gi;
    s/sleep/zasnoot/gi;
    s/wife/zheena/gi;
    s/teeth/zoobies/gi;
    s/doorbell/zvonock/gi;
    s/sound/zvook/gi;
     $witem->command("/SAY $_");
  }
}
Irssi::command_bind('leet', 'cmd_lamer');
