#include <stdio.h>
#include <stdlib.h>
#include "lists.h"
/**
 * check_cycle - Check if a linked list has a cycle.
 * @list: Pointer to the head of the linked list.
 *
 * This function uses the Floyd's Tortoise and Hare algorithm to determine
 * whether a linked list has a cycle or not. It uses two pointers, 'slow' and
 * 'fast,' to traverse the list. If there is a cycle, the two pointers will
 * eventually meet at the same node.
 *
 * @list: Pointer to the head of the linked list.
 *
 * Return: 1 if a cycle is detected, 0 otherwise.
 */
int check_cycle(listint_t *list)
{
	listint_t *slow = list, *fast = list;

	while (fast && fast->next)
	{
		slow = slow->next;
		fast = fast->next->next;
		if (slow == fast)
			return (1);
	}
	return (0);
}
