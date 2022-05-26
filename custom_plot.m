function custom_plot(x, x_amp, t, T, fs, message1, message2)    
    X_mags = abs(fftshift(fft(x)))/fs;
    X_amp_mags = abs(fftshift(fft(x_amp)))/fs;
    
    figure
    subplot(2,2,1)
    plot(t,x)
    title(strcat(strcat('Signal',message1),' time domain no gain'));
    xlabel('time(sec)');
    ylabel('Amplitude')
    
    subplot(2,2,3)
    plot(t,x_amp)
    title(strcat(strcat('Signal',message2),' time domain with gain'));
    xlabel('time(sec)');
    ylabel('Amplitude')
    

    subplot(2,2,2)
    plot(T,X_mags)
    title(strcat(strcat('Signal',message1),' frequency domain no gain'))
    xlabel('freq (Hz)')
    ylabel('Magnitude')
    
    subplot(2,2,4)
    plot(T,X_amp_mags)
    title(strcat(strcat('Signal',message2),' frequency domain with gain'))
    xlabel('freq (Hz)')
    ylabel('Magnitude')
    
end