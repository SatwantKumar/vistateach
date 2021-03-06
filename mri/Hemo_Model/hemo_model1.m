function [hemo_estim]= hemo_model1(hemo_response,delay,tr,nreps,figure_index)

figure(figure_index);
clf;

nl=length(hemo_response);

hemo_estim=zeros(1,nl+nreps*delay);
plot(hemo_estim);
hold
for i=1:nreps
  i
  tmp=zeros(1,nl+nreps*delay);
  tmp((i-1)*delay+1:(i-1)*delay+nl)=hemo_response;
  plot(tmp,'y-.');
  hemo_estim=hemo_estim+tmp;
  plot(hemo_estim,'c');
  pause
end
