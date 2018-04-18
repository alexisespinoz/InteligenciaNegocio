
datax=dlmread('C:\Users\araya\Desktop\inteligencia de negocis\tarea 1\data\grupo3.txt')
datay=zeros(200,1)
for i = 1:100
  datay(i)=1
endfor  
maxiter=5*exp(3)
mu=1*exp(-3)
Hlayer=[40 20]
W=mlp_inic_w(size(datax,2),size(datay,2),Hlayer)
mlp=mlp_train(datax,datay,W,maxiter)
#zv=mlp_test()




