#!/usr/bin/env fish

function exam-check
    echo $argv
end

# check all exam folder
for catelog in (ls exams)
    if test -d exams/$catelog
        for exam in (ls exams/$catelog)
            if test -d exams/$catelog
                exam-check exams/$catelog/$exam
            end
        end
    end
end
