function W = mlp_inic_w(nlnp,mOut,Hlayer)
 H=[nlnp Hlayer mOut]
 disp(H)
 L=numel(H)
 x=nlnp+mOut
 a=6./sqrt(x)
 for i= 1:L-1
   W{1}=rand(H(i),H(i+1))*2*a-a
 endfor
 endfunction
