; get list from user
(defun getList (arg)
  (setq  curr 0 mylist () num (read-number "Enter list length: "))
  (debug)
  (interactive
  (while (< curr num)
    (push
     (debug)
     (read-number "Enter number: ")
     mylist)))
  (message "List is %S" arg))

(getList 2)

; check if any items in the list add up to be 0
; loop through each item, checking to see if sum is 0
