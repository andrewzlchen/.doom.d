;;; ~/.doom.d/+prog.el -*- lexical-binding: t; -*-


;; Completion Config
(use-package! lsp-mode
  :hook
  (go-mode . lsp-deferred))

(add-hook 'lsp-ui-mode-hook (λ!! #'lsp-ui-doc-mode -1))

(after! lsp-ui
  (setq lsp-ui-sideline-enable nil
        lsp-ui-doc-include-signature t
        lsp-ui-doc-max-height 15
        lsp-ui-doc-max-width 100
        lsp-ui-doc-position 'at-point))
