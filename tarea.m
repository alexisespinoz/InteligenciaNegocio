function main
datay=dlmread('c:\Users\araya\Desktop\inteligencia de negocis\Data\dtst_y')
datax=dlmread('c:\Users\araya\Desktop\inteligencia de negocis\Data\dtst_x')
maxiter=5*exp(3)
mu=1*exp(-3)
Hlayer=[40 20]
W=mlp_inic_w(size(datax),size(datay),Hlayer)
mlp=mlp_train(datax,datay,W,maxiter)
zv=mlp_test()
endfunction

function [W] = mlp_inic_w(nlnp,mOut,Hlayer)
 H=[nlnp Hlayer mOut]
 L=numel(H)
 x=nlnp+mOut
 print(x)
 a=6/sqrt(x)
 for i= 1:L-1
   W(i)=rand(H(i),H(i+1))*2*a-a
 endfor
 return
endfunction

function [mse]= mlp_train(datax,datay,W,maxiter)
  L=length(W)
endfunction