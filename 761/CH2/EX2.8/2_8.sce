clc;
//page no 85
//problem no. 2.8
// all the frequencies are in MHz
freq_free_run =12; 
freq_lock1 =10;
freq_lock2 =16;
// capture range is approximately twice the difference between the free-running freq and the freq at which lock is first achieved
capture_range =2*(freq_free_run - freq_lock1 );
disp('MHz',capture_range,'The capture range is ');
// lock range is approximately twice the the difference between the freq where lock is lost and free-running freq
lock_range = 2*(freq_lock2 - freq_free_run);
disp('MHz',lock_range,'The lock range is ');
// The PLL freq response id approximate symmetrical.This means the free-running freq is in the center of the lock range and capture range. Therefore
freq_lock_acquired = freq_free_run + (capture_range/2);
freq_lock_lost = freq_free_run - capture_range
disp('MHz',freq_lock_acquired,'The freq at which the lock is acquired, moving downward in freq is ');
disp('MHz',freq_lock_lost,'Lock will be lost on the way down at');