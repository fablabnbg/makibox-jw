// Bracket to hold the bowden tube firmly in place
// on a minimalistic-zen-replacement extruder.
//
// 2014-06-24, juewei@fabfolk.com
//
// This part is an add-on to https://www.youmagine.com/designs/minimalistic-zen-replacement
//
translate([-15,0,17])rotate([180,0,0])
difference()
{
   union()
   {
	  difference()
	  {
	
	    translate([0,-7.5,0])cube([30,15,17]);
	    translate([1,-5.2,.5])cube([30,10.4,12.5]);
       translate([-2,-4.8,-1])cube([34,9.6, 4]);
	  };
     translate([12.5,-7,9])cube([5,8,8]);
  };
  translate([15,0,-5])cylinder(h=30, r=3, $fs=.5);
  translate([12.5,0,-2])cube([5,10,25]);
};



