// chapter 2 example 2
//------------------------------------------------------------------------------
clc;
clear;
// ur1 = 3
// ur2 = 5
// B1 = 2ax + ay
// choosing the unit normal an = (ay + az)/√2
// |Bn1| = ((2ax + ay)*(ay + az))/√2 = 1/√2
//Therefore Bn1 = 1/√2an = (1/√2)*(ay + az)/√2
// Also, Bn2 = Bn1 = 0.5ay + 0.5az
// the tangential component of B1 is given by
// Bt1 = B1 - Bn1 = (2ax + ay)-(0.5ay + 0.5az)
//     = 2ax + 0.5ay - 0.5az
// this gives Ht1 = (1/µo)((2/3)ax + (0.5/3)ay - (0.5/3)az)
// Ht1  = (1/µo)*(0.66ax + 0.16ay -0.16az) = Ht2
// Bt2  = µoµr2Ht2 = 3.3ax + 0.8ay - 0.8az
// now B2 = Bn2 + Bt2 = (0.5ay + 0.5az)+(3.3ax + 0.8ay - 0.8az)
//        = (3.3ax +1.3ay - 0.3az)
// H2   = (1/µo)*((3.3/5)ax + (1.3/5)ay - (0.3/5)az)
// H2   = (1/µo)*(0.66ax +0.26ay - 0.06az)
mprintf('B2 = (3.3ax +1.3ay - 0.3az)\n H2 = (1/µo)*(0.66ax +0.26ay - 0.06az)' );
//------------------------------------------------------------------------------
