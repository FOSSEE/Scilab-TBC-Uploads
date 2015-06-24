// Computing sum of squares, as presented in Example 11.5 on page 415.
// 11.8

exec('tf.sci',-1);
exec('covar_m.sci',-1);

Y = tf([1 0],[1 -0.9],-1);
covar_m(Y,1)

