;;; core-config.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;; This file is not part of GNU Emacs

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

(set-keyboard-coding-system 'utf-8)                        ;; » Configurar codificacion de caracteres UTF-8
(set-default 'cursor-type '(bar . 1))
(set-frame-parameter (selected-frame)
		     'internal-border-width 24)


;; » Desplegar linea de enumeracion de codigo
(global-display-line-numbers-mode 1)


(setq-default gc-cons-threshold most-positive-fixnum)      ;; » Aplazar la recoleccion de basura más adelante en el proceso de inicio
(setq-default mode-line-format  nil)                       ;; » Evitar el parpadeo de la linea de modelo sin estilo al inicio
(setq-default line-spacing      0)                         ;;


(setq auto-mode-case-fold nil)                             ;;
(setq x-underline-at-descent-line t)                       ;;
(setq widget-image-enable nil)                             ;;
(setq visible-bell t)                                      ;;
(setq ring-bell-function 'ignore)                          ;;
(setq default-frame-alist
      (append (list '(width . 72) '(height . 40)
		    '(vertical-scroll-bars . nil)
		    '(internal-border-width . 24)
		    '(font . "Roboto Mono Light 14"))))    ;;


(blink-cursor-mode 0)                                      ;;
(tooltip-mode 0)                                           ;; » Deshabilitar la Informacion sobre las herramientas
(show-paren-mode t)                                        ;; » El modo padre es parte del tema


;; » Cuando se configura un face, se elimina cualquier configuracion anterior
(defun set-face (face style)
  "Restablecer una CARA y hacer que herede ESTILO"
  (set-face-attribute face nil
		      :foreground 'unspecified :background 'unspecified
		      :family     'unspecified :slant      'unspecified
		      :weight     'unspecified :height     'unspecified
		      :underline  'unspecified :overline   'unspecified
		      :box        'unspecified :inherit    style))

;; » Representacion de lineas de modo
;; Esta linea hace que los bits sean mas rapidos
(set-fontset-font "fontset-default"  '(#x2600 . #x26ff) "Fira Code 16")
(define-key mode-line-major-mode-keymap [header-line]
	    (lookup-key mode-line-major-mode-keymap [mode-line]))

(defun mode-line-render (left right)
  "Funcion para renderizar la linea del modelo de IZQUIERDA a DERECHA"
  (concat left
	  (propertize " " 'display `(space :align-to (- right ,(length right))))
	  right))

(setq-default mode-line-format
	      '((:eval
		 (mode-line-render
		  (format-mode-line (list
				     (propertize "☰" 'face `(:inherit mode-line-buffer-id)
						 'help-echo "Mode(s) menu"
						 'mouse-face 'mode-line-highlight
						 'local-map  mode-line-major-mode-keymap)
				     " %b "
				     (if (and buffer-file-name (buffer-modified-p))
					 (propertize "(modified)" 'face `(:inherit face-faded)))))
		  (format-mode-line
		   (propertize "%4l:%2c" 'face `(:inherit face-faded)))))))

;; » Establecer la linea de modelo en la parte superior
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format'(""))

;; » Divisor vertical de Windows
(setq window-divider-default-right-width 3)
(setq window-divider-default-places 'right-only)
(window-divider-mode)


;; » Boton Funcion (harcoded)
(defun package-make-button (text &rest properties)
  "Inserter boton etiquetado como TEXTO con PROPIEDADES en el
  punto. Las PROPIEDADES se pasan a 'insert-text-button', para lo cual
  esta funcion es un contenedor de conveniencia utilizado por
  'describe-package-1'"
  (let ((button-text (if (display-graphic-p)
			 text (concat "[" text "]")))
	(button-face (if (display-graphic-p)
			 '(:box `(:line-width 1
					      :color "#999999":style nil)
				:foreground "#999999"
				:background "#F0F0F0")
		       'link)))
    (apply #'insert-text-button button-text
	   'face button-face 'follow-link t properties)))

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(provide 'core-config)
