;; /**********cedet����**********/
(add-to-list 'load-path "E:/ELispPlugin/cedet-1.0")
(load-file "E:/ELispPlugin/cedet-1.0/common/cedet.el")
;;cedet�Ѿ��������������speedbar��eieio.el��semantic
(require 'cedet)

(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(global-srecode-minor-mode 1)

(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

;; /**********ecb����**********/
(add-to-list 'load-path "E:/ELispPlugin/ecb-2.40")
(load-file "E:/ELispPlugin/ecb-2.40/ecb.el")
(require 'ecb)

;�Զ�����ecb�Ҳ���ʾÿ����ʾ�Լ��̶�ecb���ڴ�С
(setq ecb-auto-activate t
	ecb-tip-of-the-day nil
	ecb-tree-indent 4 
    ecb-windows-height 0.5 
    ecb-windows-width 0.2)
	
;�����ڼ��л�
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;���غ���ʾecb����
(define-key global-map [C-f1] 'ecb-hide-ecb-windows)
(define-key global-map [C-f2] 'ecb-show-ecb-windows)
 
;ʹĳһecb�������
(define-key global-map [C-kp-0] 'ecb-maximize-window-directories)
(define-key global-map [C-kp-1] 'ecb-maximize-window-sources)
(define-key global-map [C-kp-2] 'ecb-maximize-window-methods)
(define-key global-map [C-kp-3] 'ecb-maximize-window-history)


;�ָ�ԭʼ���ڲ���
(define-key global-map [C-kp-decimal] 'ecb-restore-default-window-sizes)


;; /**********cscope����**********/
(add-to-list 'load-path "E:/ELispPlugin/cscope-15.7/contrib/xcscope")
(load-file "E:/ELispPlugin/cscope-15.7/contrib/xcscope/xcscope.el")
(require 'xcscope)
;������cscope.out
(setq cscope-do-not-update-database t)
(define-key global-map [C-left] 'cscope-prev-file)
(define-key global-map [C-right] 'cscope-next-file)
(define-key global-map [C-up] 'cscope-find-functions-calling-this-function)
(define-key global-map [C-down] 'cscope-find-called-functions)


;; /**********gtags����**********/
;(add-to-list 'load-path "E:/ELispPlugin/global-6.28/share/gtags")
;(require 'gtags)
;�Զ�����gtagsģʽ
;(autoload 'gtags-mode "gtags" "" t)
;һ������C-modeģʽ�����gtagsģʽ
;(setq c-mode-hook
;      '(lambda ()
;     (gtags-mode 1)))
	
	
;; /**********color-theme����**********/
(add-to-list 'load-path "E:/ELispPlugin/color-theme-6.6.0")
(load-file "E:/ELispPlugin/color-theme-6.6.0/color-theme.el")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-deep-blue)))
		

;; /**********auto-complete����**********/
(add-to-list 'load-path "E:/ELispPlugin/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "E:/ELispPlugin/auto-complete-1.3.1/dict")
(ac-config-default)


;; /**********yasnippet-bundle����**********/
(add-to-list 'load-path "E:/ELispPlugin/yasnippet-bundle")
(require 'yasnippet-bundle)

		
;; /**********company-mode����**********/
;(add-to-list 'load-path "E:/ELispPlugin/company-mode")
;(autoload 'company-mode "company" nil t)


;; /**********cc-mode����**********/
(require 'cc-mode)
(define-key c-mode-base-map [(f5)] 'compile)
(setq compile-command "gcc -g -Wall ")


;; /**********ERC����**********/
(add-to-list 'load-path "E:/ELispPlugin/erc-5.1.2")
(require 'erc)
(require 'erc-dcc)
(require 'erc-list)
(require 'erc-nicklist)

(setq erc-server-coding-system '(euc-cn . euc-cn)
      erc-encoding-coding-alist '(("#linuxfire" . chinese-iso-8bit)))
;; (setq erc-encoding-coding-alist (quote (("default" . chinese-iso-8bit))))
(setq erc-nick "Aslang")
(setq erc-server "irc.freenode.net")
(setq erc-port "6667")
(setq erc-autojoin-channels-alist '(("irc.freenode.net"
	 			     "#debian" "#freebsd" "#flood")
				    ("irc.oltc.net"
				     "#chathelp")
				    ))

(setq erc-default-coding-system '(utf-8 . utf-8))
(add-hook 'erc-mode-hook
              '(lambda () 
               (require 'erc-pcomplete)
                  (pcomplete-erc-setup)
                 (erc-completion-mode 1)))
				 
				 
		
;; /**********��������**********/
;����emacsʱ�������
;(my-maximized)

;��ʾ�к�
(global-linum-mode t)

;����
(set-default-font "Courier New")
(set-fontset-font "fontset-default" 'unicode '("΢���ź�" . "unicode-bmp"))

;�����ʾΪ����
(setq-default cursor-type 'bar)

;��ʾ����ʱ��
;(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 100)
(display-time)


;�򵥵Ĵ��벹ȫ����
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list 
		'(try-expand-dabbrev
		try-expand-dabbrev-visible
		try-expand-dabbrev-all-buffers
		try-expand-dabbrev-from-kill
		try-complete-file-name-partially
		try-complete-file-name
		try-expand-all-abbrevs
		try-expand-list
		try-expand-line
		try-complete-lisp-symbol-partially
		try-complete-lisp-symbol))


;;===================================================================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
