CFLAGS = -O2 -Wall

OBJS = main.o crc32.o

%.o: %.c
	$(CC) $(CFLAGS) $(WLCONF_DIR) -c -o $@ $<

all: $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o wlconf

clean:
	@rm -f *.o wlconf
