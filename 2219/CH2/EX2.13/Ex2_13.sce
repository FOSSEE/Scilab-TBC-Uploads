// chapter 2 example 13
//------------------------------------------------------------------------------
clc;
clear;
// given data
// E = 20π e^j(wt - βz)ax
// H = Hm e^j(wt + βz)ay
lamda = 1.8;        // wavelength in m
c     = 3*10^8;     // vel. in m/s
er    = 49;         // relative permitivity
ur    = 1;          // relative permeability
Em    = 20*%pi      // from the given expression
// Calculations
v     = c/sqrt(er);  // velocity of propagation of wave in medium with er rel.permitivity
w     = (2*%pi*v)/lamda;
// let k = E/H
k = (120*%pi)*sqrt(ur/er);
Hm = Em/k
// sign of Hm can be determined by evaluating the maxwells eqn
// V*E = ∂B/∂x 
// V*E = -j20π e^j(wt - βz)ay              ---------------- 1
// -∂B/∂x = -juow Hm e^j(wt + βz)ay        ---------------- 2
// comparing 1 and 2 singn of Hm must be positive
mprintf('w = %3.1e rad/s\n Hm = %3.2f A/m',w,Hm);
//------------------------------------------------------------------------------
