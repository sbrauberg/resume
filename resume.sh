#!/bin/bash

# Define the resume PDF location
resume="Stephan Brauberg - SDET II.pdf"

# Greet the user
echo "Hello, user! Welcome."

# Ask if the user is interested in viewing Stephan's latest resume
echo "Are you interested in viewing Stephan's latest resume?"
select answer in "Yes" "No"
do
    case $answer in
        "Yes")
            # If yes, print out the resume from a PDF
            if [ -f "$resume" ]; then
                # Convert the PDF to text and print it
                #pdftotext "$resume" - | less
                pdftotext -layout "$resume" -
                # Ask if the user is satisfied with the candidate
                echo "Are you satisfied with the candidate?"
                select satisfaction in "Yes" "No"
                do
                    case $satisfaction in
                        "Yes")
                            echo "Oh nice! Please reach out to me to schedule an interview!"
                            break
                            ;;
                        "No")
                            echo "Oh no... I appreciate your feedback."
                            break
                            ;;
                        *)
                            echo "Invalid option. Please select 1 for Yes or 2 for No."
                            ;;
                    esac
                done
            else
                echo "The resume file was not found. Please check the file path."
            fi
            break
            ;;
        "No")
            # If no, thank the user for their time and stop
            echo "Thank you for your time, and best of luck!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please select 1 for Yes or 2 for No."
            ;;
    esac
done
