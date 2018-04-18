function a=sigmoidAct(x)
  if(nargin<2)
    a=1./(1+exp(-x))
  else
    a=x.*(1-x)
  endif
endfunction