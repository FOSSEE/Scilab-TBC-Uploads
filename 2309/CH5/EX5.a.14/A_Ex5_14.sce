// Chapter 5 additional Example 14
//==============================================================================
clc;
clear;

// if a plane cut intercepts of lengths l1,l2,l3 the on three crystal axes ,then
// l1 : l2 : l3 = pa : pq :rc
// where a,b and c are primitive vectors of the unit cell and p,q and r are numbers related to miller indices (hkl) of plane by relation
// 1/p : 1/q : 1/r = h : k : l
//since, the crystal is simple cubic a = b = c and given that h = 1, k = 1 and l = 1
// p : q : r = 1/h : 1/k : 1/l = 1/1 : 1/1 : 1/1 
// p : q : r = 1 : 1 : 1
//similarly l1 : l2 : l3 = 1a : 1a : 1a
mprintf('ratio of intercepts on the three axes by (111) plane is l1 : l2 : l3 = 1 : 1 : 1');
