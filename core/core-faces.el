;;; core-faces.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

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

;; » Definicion de Costum Faces
(defface face-critical nil
  "El face critico se utiliza para informacion que requiere accion
  inmediata. Debe tener un alto contraste en comparacion con otros
  faces. Esto se puede lograr, por ejemplo, configurando un color de
  fondo intenso, generalmente un tono rojo. Debe usarse con poca
  frecuencia"
  :group 'elegance)

(defface face-popout nil
  "La face resaltante se utiliza para informacion que requiere atencion.
  Para lograr este efecto, el tono de la face debe ser suficientemente
  diferente al de las otras caras para atraer la atencion mediante el efecto
  resaltado"
  :group 'elegance)

(defface face-strong nil
  "El tipo de la letra se utiliza para informacion estructural. Debe ser
  del mismo color que el predeterminado y solo el grosor difiere en un nivel
  (p. ej.,claro/normal o normal/negrita). Generalmente se utiliza para
  titulos, palabras clave, directorios, etc."
  :group 'elegance)

(defface face-salient nil
  "La face destacada se utiliza para informacion importante. Para sugerir
  que la informacion es de la misma naturaleza, pero importante, la face
  utiliza un tono diferente con aproximadamente la misma intensidad que el
  rostro predeterminado. Esto se suele usar para enlaces"
  :group 'elegance)

(defface face-faded nil
  "El tipo de letra difuminado se utiliza para informacion menos
  importante. Se crea con el mismo tono que el predeterminado, pero con
  menor intensidad. Se puede usar para comentarios, informacion secundaria
  y tambien para reemplazar la cursiva (que, de todos modos, suele usarse
  de forma abusiva)"
  :group 'elegance)

(defface face-subtle nil
  "El uso de la face sutil sugiere un area fisica en la pantalla. Es
  importante no perturbar demasiado la lectura de la informacion, lo que
  se puede lograr con un color de fondo muy claro, apenas perceptible"
  :group 'elegance)


;; » Modelo
(defun set-modeline-faces ()
  "Linea de Modo Superior"
  (set-face-attribute 'custom-button nil
		      :foreground (face-foreground 'face-faded)
		      :background (face-background 'face-subtle)
		      :box `(:line-width 1
					 :color ,(face-foreground 'face-faded)
					 :style nil))
  (set-face-attribute 'custom-button-mouse nil
		      :foreground (face-foreground 'default)
		      ;;; :background (face-foreground 'face-faded)
		      :inherit 'custom-button
		      :box `(:line-width 1
					 :color ,(face-foreground 'face-subtle)
					 :style nil))
  (set-face-attribute 'custon-button-pressed nil
		      :foreground (face-foreground 'default)
		      :background (face-foreground 'face-salient)
		      :inherit 'face-salient
		      :box `(:line-width 1
					 :color ,(face-foreground 'face-salient)
					 :style nil)
		      :inverse-video nil))
'(cus-edit (set-button-faces))


;; » Terminos
'(term-bold                               'face-strong)
'(set-face-attribute 'term-color-black nil
		     :foreground (face-foreground 'default)
		     :background (face-foreground 'default))
'(set-face-attribute 'term-color-white nil
		     :foreground "white"   :background "white")
'(set-face-attribute 'term-color-blue nil
		     :foreground "#42A5F5" :background "#BBDEF8")
'(set-face-attribute 'term-color-cyan nil
		     :foreground "#26C6DA" :background "#B2EBF2")
'(set-face-attribute 'term-color-green nil
		     :foreground "#66BB6A" :background "#C8E6C9")
'(set-face-attribute 'term-color-magenta nil
		     :foreground "#AB47BC" :background "#E1BEE7")
'(set-face-attribute 'term-color-red nil
		     :foreground "#EF5350" :background "#FFCDD2")
'(set-face-attribute 'term-color-yellow nil
		     :foreground "#FFEE58" :background "#FFF9C4")

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(provide 'core-faces)
