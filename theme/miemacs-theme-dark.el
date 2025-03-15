;;; miemacs-theme-dark.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

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

;;; Paquetes
(deftheme miemacs-dark
  "Tema elegante del editor de codigo")
(load (concat (file-name-directory load-file-name) "../miemacs-config")
      nil (not init-file-debug))

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;; » Colores Generales
(set-background-color "#3f3f3f")
(set-foreground-color "#4f4f4f")
(set-face-attribute 'default nil :foreground "#85da64"
		    :background (face-foreground 'default))
(set-face-attribute 'face-critical nil :foreground "#385f38"
		    :background "#f8f893")
(set-face-attribute 'face-popout nil :foreground "#f0dfaf")
(set-face-attribute 'face-strong nil :foreground "#00b2c6"
		    :weight 'regular)
(set-face-attribute 'face-salient nil :foreground "#dca3a3"
		    :weight 'light)
(set-face-attribute 'face-faded nil :foreground "#777767"
		    :weight 'light)
(set-face-attribute 'face-subtle nil :background "#3e81c4")
;;(set-modeline-faces)

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(provide-theme 'miemacs-dark)
