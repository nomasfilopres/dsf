

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(LDFLAGS) -c $< $(CFLAGS)

.PHONY: clean
clean:
	rm -rf *.o $(TARGET)
