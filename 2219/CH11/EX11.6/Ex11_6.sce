//Chapter 11 example 6
//------------------------------------------------------------------------------
clc;
clear;
// Given data
h       = 35786;        // ht of geo.stationary orbit above earth surface
T       = 365;          // time in days
r       = 6378          // radius of earth in km

// ie(t) = 23.4*sin(2*%pi*t/T)
// for a circular orbit of 20000 km radius ,phi = 37.4° ,Therefore, the time from first day of eclipse to equinox is given by substituting ie(t) = 37.4/2 = 18.7°
phi     = 37.4
ie      = (phi/2)*(%pi/180)
k       = 23.4*(%pi/180)
t       = (365/(2*%pi))*asin((ie/k)) 
// for geostationary orbit
phimax  = 180 - 2*(acos(r/(r+h)))*(180/%pi)
t_geo   = (365/(2*%pi))*asin((8.7*%pi/180)/k)

// Output
mprintf('Total time from first day of eclipse to last day of eclipse = %3.1f days\n Total time from first day of eclipse to last day of eclipse for geostationary orbit = %3.2f days',t,t_geo)
//------------------------------------------------------------------------------
