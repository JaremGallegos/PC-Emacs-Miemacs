;;; core-load-paths.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

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

;; Directorio principal raiz 
(defvar miemacs-start-directory
  (expand-file-name "../" (file-name-directory (or load-file-name buffer-file-name)))
  "Miemacs directorio de inicio")

;; Directorio de Assets
(defvar miemacs-assets-directory
  (concat miemacs-start-directory "assets/")
  "Miemacs directorio de assets")

;; Directorio del Core
(defvar miemacs-core-directory
  (concat miemacs-start-directory "core/")
  "Miemacs directorio del core")

;; Directorio de Banners
(defvar miemacs-banner-directory
  (concat miemacs-start-directory "banners/")
  "Miemacs directorio de banners")

;; Directorio de Info
(defvar miemacs-info-directory
  (concat miemacs-core-directory "info/")
  "Miemacs directorio de informacion")

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(provide 'core-load-paths)
