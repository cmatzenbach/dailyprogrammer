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
(defun check-for-zero (lista listb)
  (setq check nil)
  (while lista
    (while listb
      (when (= (+ lista listb) 0) (setq check t))
      (setq listb (cdr listb))
      (setq lista (cdr lista))))
  (when check t))

(setq uno '(1 2 3 4))
(setq dos '(1 -2 3 4))
(check-for-zero uno dos)
