clear;
clc;

// Illustration 6.13
// Page: 380
printf('Illustration 6.13 -  Page: 380\n\n');

// solution
//*****Data*****//
// A-benzene  B-toluene  C-1,2,3-trimethylbenzene
// From example 6.10
Nmin = 4.32; // [stages]
// From example 6.11
Rmin = 0.717; // [minimum reflux ratio]
// For R = 1
R = 1;
X = (R-Rmin)/(R+1);
// From equ 6.88
Y = 1-exp((1+54.4*X)/(11+117.2*X)*(X-1)/sqrt(X));
// Fro equ 6.86
N = (Y+Nmin)/(1-Y);
// From example 6.10 99.7% of the LNK (benzene) is recovered in the distillate// , 95% of the light key is in the distillate, and 95% of the heavy key is in// the bottoms

// For a basis of 100 mol of feed, the material balances for three components // are
// For distillate
nAd = 39.88; // [LNK, moles of benzene]
nBd = 28.5; // [LK, moles of toluene]
nCd = 1.50; // [HK, moles of 1,2,3-trimethylbenzene]
nTd = nAd+nBd+nCd; // [total number of moles]
xAd = nAd/nTd;
xBd = nBd/(nTd);
xCd = nCd/(nTd);

// For bottoms
nAb = 0.12;
nBb = 1.50;
nCb = 28.50;
nTb = nAb+nBb+nCb;
xAb = nAb/nTb;
xBb = nBb/nTb;
xCb = nCb/nTb;

D = nTd;
W = nTb;
// From problem statement
Zlk = 0.3;
Zhk = Zlk;
// Substituting in equation 6.89
// T = Nr/Ns
T = (Zhk/Zlk*W/D*(xBb/xCd)^2)^0.206;

// Solution of simultaneous equation 
function[f]=H(e)
    f(1) = e(1)-e(2)*T;
    f(2) = e(1)+e(2)-N;
        funcprot(0);
endfunction

// Initial guess
e = [5 4];
y = fsolve(e,H);
Nr = y(1); // [number of stages in rectifying section]
Ns = y(2); // [number of stages in stripping section]
disp(Ns,Nr);
printf('Rounding the estimated equilibrium stage requirement leads to 1 stage as a partial reboiler, 4 stages below the feed, and 5 stages above the feed.');
