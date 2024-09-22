#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name a movie character: " NOUN1

read -p "1. Name another movie character: " NOUN2

read -p "1. Name a past-tense verb: " VERB1

read -p "2. Name a kind of food: " NOUN3

read -p "1. Name another past-tense verb: " VERB2

read -p "1. Name an adjective: " ADJ1

read -p "2. Name another kind of food: " NOUN4

read -p "1. Name an adjective: " ADJ2

read -p "1. Name an adjective: " ADJ3

echo "Once upon a time $NOUN1 and $NOUN2 $VERB1 to an $NOUN3 restaurant."
echo "They $VERB2 $ADJ1 food and then after they finished it, $NOUN1 and $NOUN2 decided they wanted $NOUN4 for dessert, so they asked the waiter to bring them the $ADJ2 $NOUN4."
echo "By the end of the night, they were so $ADJ3."
echo "It was the best dinner date ever!"
