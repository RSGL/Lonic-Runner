OUTPUT = RSGL-Dino-Game
GXX = g++
SOURCE = source/*.cpp
LIBS = $(shell RSGL-static)

build:
	mkdir -p build
	$(GXX) $(SOURCE) $(LIBS) -o build/$(OUTPUT)
	mkdir -p ~/.cache/$(OUTPUT)	
	echo "1" > ~/.cache/$(OUTPUT)/highScore 
	cp -r res ./build
	

install:
	chmod +x $(OUTPUT)
	cp $(OUTPUT) /usr/bin
	mkdir -p /usr/share/$(OUTPUT)
	cp -r build/* /usr/share/$(OUTPUT)