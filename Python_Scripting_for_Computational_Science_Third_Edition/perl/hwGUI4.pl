: # *-*-perl-*-*
  eval 'exec perl -w -S  $0 ${1+"$@"}' 
    if 0;  # if running under some shell

use Tk;
$main_win = MainWindow->new();
$top = $main_win->Frame();     
$top->pack(-side => 'top');   
$top->Label(-text => "Hello, World! The sine of")->pack(-side => 'top');
$r = 1.2;  # default
$r_entry = $top->Entry(-width => 6, -relief => 'sunken',
                       -textvariable => \$r);
$r_entry->pack(-side => 'top');
$r_entry->bind('<Return>', \&comp_s);
sub comp_s { $s = sin($r); }
$top->Label(-text => " equals ")->pack(-side => 'top');
$top->Label(-textvariable => \$s, -width => 18)->pack(-side => 'top');
$main_win->bind('<q>', \&exit);
MainLoop();





