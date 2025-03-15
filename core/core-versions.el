;;; core-versions.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

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

;; » Definicion de la version minima de soporte de Emacs
(defconst miemacs-version "0.999.0" "Miemacs version.")
(defconst miemacs-emacs-min-version "28.2" "Version minima de Emacs")

;; » Macro de verificacion de Emacs
(defmacro miemacs|eval-until-emacs-min-version (version msg &rest body)
  "Evalua el cuerpo si miemacs-emacs-min-version < version de emacs, de
  otra forma se lanzara el mensaje de advertencia"
  (declare (indent 1))
  `(if (version< miemacs-emacs-min-version ,version)
       (progn ,@body)
     (apply 'warn
	    (if ,msg '("%s" ,msg)
	      '("Version minima de emacs %s es mas nueva que la soportada por la version %s"
		,version miemacs-emacs-min-version)))))

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(provide 'core-versions)
