#include <stdio.h>
#include <stdlib.h>

#define MAX 100

int stack[MAX];
int top = -1;

void push(int value) {
    if (top == MAX - 1) {
        printf("Stack Overflow! Cannot push more elements.\n");
    } else {
        stack[++top] = value;
        printf("Element %d pushed onto the stack.\n", value);
    }
}

int pop() {
    if (top == -1) {
        printf("Stack Underflow! Cannot pop from an empty stack.\n");
        return -1;
    } else {
        return stack[top--];
    }
}

void displayStatus() {
    if (top == -1) {
        printf("Stack is empty.\n");
    } else {
        printf("Stack elements:\n");
        for (int i = 0; i <= top; i++) {
            printf("%d ", stack[i]);
        }
        printf("\n");
    }
}

/*int isPalindromeStack() {
    int i, j;

    if (top == -1) {
        return 0; // Empty stack is not a palindrome
    }

    for (i = 0, j = top; i < j; i++, j--) {
        if (stack[i] != stack[j]) {
            return 0; // Not a palindrome
        }
    }

    return 1; // Palindrome
}*/
/*int isPalindromeStack() {
    int start = 0;
    int end = top;

    while (start < end) {
        if (stack[start] != stack[end]) {
            return 0; // Not a palindrome
        }
        start++;
        end--;
    }

    return 1; // Palindrome
}*/

int isPalindromeStack() {
    for (int i = 0; i <= top / 2; i++) {
        if (stack[i] != stack[top - i]) {
            return 0; // Not a palindrome
        }
    }
    return 1; // Palindrome
}

int main() {
    int choice, value;

    do {
        printf("\nMenu:\n");
        printf("1. Push an Element onto Stack\n");
        printf("2. Pop an Element from Stack\n");
        printf("3. Check Palindrome Throughout the Stack\n");
        printf("4. Display Stack Status\n");
        printf("5. Exit\n");

        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter the value to push: ");
                scanf("%d", &value);
                push(value);
                break;
            case 2:
                value = pop();
                if (value != -1) {
                    printf("Popped element: %d\n", value);
                }
                break;
            case 3:
                if (isPalindromeStack()) {
                    printf("The stack elements form a palindrome.\n");
                } else {
                    printf("The stack elements do not form a palindrome.\n");
                }
                break;
            case 4:
                displayStatus();
                break;
            case 5:
                printf("Exiting the program.\n");
                break;
            default:
                printf("Invalid choice. Please try again.\n");
        }

    } while (choice != 5);

    return 0;
}
