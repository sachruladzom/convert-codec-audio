# Convert codec audio to g729
## from wav
```
$ sudo asterisk -rx "file convert path/source/file/audio.wav path/output/file/audio.g729"
```

if you got this error while converting, 
```
Unable to open input file: path/source/file/audio.wav
```

you can convert to gsm first with sox:

```
$ sox -V audio.wav -r 8000 -c 1 -t gsm audio.gsm
```