#include <stdio.h>
#include <stdlib.h>
struct Day {
    char *day;
    int *date;
    char *activity;
};
void create(struct Day *currentDay) {
	for(int i=1;i<=7;i++){
    currentDay->day = malloc(50 * sizeof(char));
    currentDay->date = malloc(10 * sizeof(int));
    currentDay->activity = calloc(100, sizeof(char));
    printf("Enter day name: ");
    scanf("%s", currentDay->day);
    printf("Enter date: ");
    scanf("%d", currentDay->date);
    printf("Enter activity description: ");
    scanf("%s", currentDay->activity);
    }
}

void display(struct Day *currentDay) {
    printf("\n DAY \t DATE \t ACTIVITY \n");
    for(int i=1;i<=7;i++){
    printf("\n %s \t %d \t %s\n", currentDay->day, currentDay->date, currentDay->activity);
    }
}
int main() {
    struct Day currentDay;
    create(&currentDay);
    printf("\nCalendar Details:\n");
    display(&currentDay);
    free(currentDay.day);
    free(currentDay.date);
    free(currentDay.activity);
    return 0;
}
