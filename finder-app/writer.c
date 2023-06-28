#include <stdio.h>
#include <syslog.h>

int main( int argc, char *argv[] ) {
	// Set initial return value
	int retval = 0;
	// Declare the file
	FILE *fp;
	// Open syslog logger with USER facility
	openlog(NULL,0,LOG_USER);
	// Check if both correct arguements are provided
	if ( argc == 3 ) {
		syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
		fp = fopen(argv[1], "w");
		fputs(argv[2], fp);
		fclose(fp);
	}
	else {
		syslog(LOG_ERR, "Invalid number of arguments: %d", argc-1);
		retval = 1;
	}
	closelog();
 	return(retval);
}
