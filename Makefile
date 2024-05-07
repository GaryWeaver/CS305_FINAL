main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	gcc -o main main.o get_student_id.o -Wall -Wextra

main.o: main.c
	gcc -c main.c -Wall -Wextra

get_student_id.o: get_student_id.c
	gcc -c get_student_id.c -Wall -Wextra

.PHONY: clean
clean:
	rm -f main main.out *.o
