//Sample Problem 43-4
txt = mopen('Example43_4_result.txt','wt')
mfprintf(txt, '**Sample Problem 43-4**\n')
slope = (0-6.2)/(225-0)
lambda = -slope
mfprintf(txt, 'The disintegration constant for the radionuclide is %fmin-1\n', lambda)
Th = log(2)/lambda
mfprintf(txt, 'The half life is equal to %dmin', Th)
mclose(txt)