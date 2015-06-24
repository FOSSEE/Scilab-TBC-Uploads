// chapter 7 example 10
//-----------------------------------------------------------------------------
clc;
clear;
// given data
RSSR        = 20;   // Rx signal strength in horizontal polarised antenna when rx RHCP

// Calculations
// When incident polarisation is circularly polarised and the antenna is linearly polarised,there is a ploarisation loss of 3dB
ISS         = RSSR + 3;     
// a
// when the Rx polarisation is same as the antenna polarisation , the polarisation loss is zero
RSS_HP      = ISS;      // rx signal strength for incident wave horizontally polarised
// b
// when the incident wave is vertically polarised ,the angle between the incident polarisation and the antenna polarisation is 90
// polarisation loss = 20log(1/cos( φ))
//                   = 20log(1/cos90) = ∞
RSS_VP      = 0;        // rx signal strength for incident wave vertically polarised
// c
// When the incident wave is LHCP and the antenna polarisation is linear ,there will be a 3dB polarisation loss and the 
// Rx signal strength therefore will be 20 dB only
RSS_LHCP    = RSSR;      // rx signal strength for incident wave Left hand circularly polarised
// d
// The angle between the incident wave polarisation and the antenna polarisation is 60 degrees
phi         = 60;                               // rx wave polarisation angle with horizontal
PL          = 20*log10(1/cos(60*%pi/180));      // polarisation loss in dB
RSS_Pangle  = ISS - PL;
//output
mprintf('Received signal strength if incident wave horizontally polarised = %d dB\n Received signal strength if incident wave vertically polarised = %d dB\n Received signal strength if incident wave Left hand circularly polarised is %d dB\n Received signal strength if Received wave polarisation making 60deg angle with horizontal is %3.0f dB',RSS_HP,RSS_VP,RSS_LHCP,RSS_Pangle);
//--------------------------------------------------------------------------------


