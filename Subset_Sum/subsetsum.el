; get list from user
(defun my-read-numbers (prompt)
  (let (result done)
    (while (not done)
      (let ((input (read-number prompt)))
        (if (zerop input)
            (setq done t)
          (push input result))))
    (nreverse result)))

(my-read-numbers "> ")


; check if any items in the list add up to be 0
; loop through each item, checking to see if sum is 0
