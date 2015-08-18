// (c) 2014 juewei@fabfolk.com
// GPLv2.0 or ask
//
// Attaching an 80mm fan to the rear of your makibox

module bracket()
{
  difference()
  {
    union()
    {
      translate([-2,0,0]) cube([22,80,16]);
      translate([-5,30,-9])cube([5,20,25]);
      translate([-2,25,-11])cube([2,30,27]);
    }
    translate([0,6,-1]) cube([10,68,18]);
    translate([0,3,-1]) cube([5,74,18]);
    translate([0,7,-1]) cube([22,66,18]);
    translate([13,2,-1])cube([10,76,18]);
  }
}

module hook()
{
   union()
   {
     translate([0,0,-13-5]) cube([6,2,1+13+5]);
     translate([3,7,-13-2.2]) rotate(90, [1,0,0]) cylinder(r=2.2, h=6);
   }
}

union()
{
  rotate(-45, [0,1,0]) translate([5,0,9]) bracket();
  difference()
  {
    translate([0,-20,0])  cube([66,75,3]);
    translate([5,-10,-1]) cube([66,60,5]);
    translate([35,-10,-1])cube([66,75,5]);
  }
  translate([30,-20,0]) hook();
  translate([60,-20,0]) hook();
}  