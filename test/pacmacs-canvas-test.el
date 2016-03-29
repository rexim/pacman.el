
(ert-deftest pacmacs--make-canvas-test ()
  (let* ((width 80)
         (height 120)
         (grid-width (/ width pacmacs--canvas-tile-width))
         (grid-height (/ height pacmacs--canvas-tile-height))
         (canvas (pacmacs--make-canvas 80 120)))
    (should canvas)
    (should (equal width (pacmacs--canvas-width canvas)))
    (should (equal height (pacmacs--canvas-height canvas)))
    (should (equal grid-width (pacmacs--canvas-grid-width canvas)))
    (should (equal grid-height (pacmacs--canvas-grid-height canvas))))
  (should-error (pacmacs--make-canvase 40 41)))
