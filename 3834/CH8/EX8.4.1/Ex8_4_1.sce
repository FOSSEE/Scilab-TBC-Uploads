//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 8.4.1
//windows 8
//Scilab version-6.0.0
clc;
clear;
//given

L=2;//installation length in Km
lambda=850E-9;//operating wavelength in m
deltalambda=20;//spectral width in nm
BW=16;//maximum bit rate in M bit/s
taultwrise=4;//rise time of light wave equipment in ns
BWLmodal=160//modalbandwidth length product in MHz.Km from data sheet
dlambda=0.21//chromatic dispersion parameter in ns/nm.Km at 850nm wavelength
tausystrise=0.35/BW;//total system rise time in us
mprintf("Total system rise time= %.0f ns",tausystrise*1e3);//multiplication by 1e3 to convert unit from us to ns
taufib_rise1=sqrt((tausystrise*1e3)^2-(taultwrise)^2)//Fiber  risetime in ns//the answer vary due to rounding
mprintf("\nFiber  risetime =%.2f ns",taufib_rise1)
BWmodal=BWLmodal/(L)//modal bandwidth in MHz
BWel_modal=0.707*BWmodal//electrical bandwith in MHz
taumod_rise=0.35/BWel_modal//Fiber modal risetime in ns
mprintf("\nFiber  modal risetime =%.2f ns",taumod_rise*1e3)//multiplication by 1e3 to convert unit from us to ns
tauchrom_rise=dlambda*L*deltalambda//Fiber chromatic risetime in ns
mprintf("\nFiber chromatic risetime =%.2f ns",tauchrom_rise)
taufib_rise2=sqrt((taumod_rise*1e3)^2+tauchrom_rise^2)//Fiber  risetime in ns
mprintf("\nFiber  risetime =%.1f ns",taufib_rise2)
mprintf("\nThe fiber rise time %.2fns is less than the required risetime of %.2f ns;therefore the chosen fiber will support this link",taufib_rise2,taufib_rise1)
