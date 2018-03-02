(setq inhibit-startup-message t)
(setq column-number-mode t)
(setq-default c-basic-offset 4)
(setq-default fill-column 80)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
	     :ensure t)

(use-package which-key
	     :ensure t
	     :config
	     (which-key-mode))

;; using swiper so ido no longer needed
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

(use-package counsel
	     :ensure t
	     )

(use-package swiper
	     :ensure try
	     :config
	     (progn
	       (ivy-mode 1)
	       (setq ivy-use-virtual-buffers nil)
	       (global-set-key "\C-s" 'swiper)
	       (global-set-key (kbd "C-c C-r") 'ivy-resume)
	       (global-set-key (kbd "<f6>") 'ivy-resume)
	       (global-set-key (kbd "M-x") 'counsel-M-x)
	       (global-set-key (kbd "C-x C-f") 'counsel-find-file)
	       (global-set-key (kbd "<f1> f") 'counsel-describe-function)
	       (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
	       (global-set-key (kbd "<f1> l") 'counsel-load-library)
	       (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
	       (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
	       (global-set-key (kbd "C-c g") 'counsel-git)
	       (global-set-key (kbd "C-c j") 'counsel-git-grep)
	       (global-set-key (kbd "C-c k") 'counsel-ag)
	       (global-set-key (kbd "C-x l") 'counsel-locate)
	       (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
	       (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
	       ))


(use-package zenburn-theme
	     :ensure t
	     :config (load-theme 'zenburn t))

(menu-bar-mode -1)
(tool-bar-mode -1)


 
