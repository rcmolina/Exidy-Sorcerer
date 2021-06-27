rem 300bauds work with ID11
rem wav2tzx "Chess 1.0-(Sorcerer-Computer-Users-Australia)-Sorcerer-300baud.wav"
rem sox -v 0.5 "Chess 1.0-(Sorcerer-Computer-Users-Australia)-Sorcerer-1200baud.wav" -1 -r 4800 "Chess 1.0-(Sorcerer-Computer-Users-Australia)-Sorcerer-1200baud.voc"
rem direct "Chess 1.0-(Sorcerer-Computer-Users-Australia)-Sorcerer-1200baud_4800Hz.voc"

rem PAUSE

forfiles /m *.wav /C "cmd /c wav2tzx @file @fname_id11.tzx
rem del *.wav
mkdir 300TZX
move *.tzx 300TZX
forfiles /m *.wav /C "cmd /c sox -v 0.5 @file -1 -r 4800 @fname.voc
forfiles /m *.voc /C "cmd /c direct  /t 1464 @file @fname_4800Hz.tzx
del *.voc
mkdir 1200TZX
move *.tzx 1200TZX
PAUSE
