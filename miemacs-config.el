;;; miemacs-config.el -- A Mistral Emacs Configuration. -*- lexical-binding: t no-byte-compile: t -*-

;; Copyright (C) 2025-2045 Jarem Gallegos
;; Author: Jarem Gallegos <jaremgallegosp@gmail.com>
;; URL: https://github.com/JaremGallegos/miemacs-config.git
;; Version: 1.0.0
;; Keywords: .emacs.d miemacs

;; ███    ███ ██ ███████ ███    ███  █████   ██████ ███████ 
;; ████  ████ ██ ██      ████  ████ ██   ██ ██      ██      
;; ██ ████ ██ ██ █████   ██ ████ ██ ███████ ██      ███████ 
;; ██  ██  ██ ██ ██      ██  ██  ██ ██   ██ ██           ██ 
;; ██      ██ ██ ███████ ██      ██ ██   ██  ██████ ███████                                                
;;
;; MIEMACS EMACS - Enjoy Programming & Writing

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
(defconst emacs-start-time (current-time))
(load (concat (file-name-directory load-file-name) "core/core-load-paths")
      nil (not init-file-debug))
(load (concat miemacs-core-directory "core-versions")
      nil (not init-file-debug))
(load (concat miemacs-core-directory "core-dumpers")
      nil (not init-file-debug))
(load (concat miemacs-core-directory "core-config")
      nil (not init-file-debug))
(load (concat miemacs-core-directory "core-groups")
      nil (not init-file-debug))
(load (concat miemacs-core-directory "core-faces")
      nil (not init-file-debug))

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;; » Estructura
(set-face 'bold                           'face-strong)
(set-face 'italic                         'face-faded)
(set-face 'bold-italic                    'face-strong)
(set-face 'region                         'face-subtle)
(set-face 'highlight                      'face-subtle)
(set-face 'fixed-pitch                    'default)
(set-face 'fixed-pitch-serif              'default)
(set-face 'variable-pitch                 'default)
(set-face 'cursor                         'default)

;; » Semantica
(set-face 'shadow                         'face-faded)
(set-face 'success                        'face-salient)
(set-face 'warning                        'face-popout)
(set-face 'error                          'face-critical)

;; » General
(set-face 'buffer-menu-buffer             'face-strong)
(set-face 'minibuffer-prompt              'face-strong)
(set-face 'link                           'face-salient)
(set-face 'fringe                         'face-faded)
(set-face 'isearch                        'face-strong)
(set-face 'isearch-fail                   'face-faded)
(set-face 'lazy-highlight                 'face-subtle)
(set-face 'trailing-whitespace            'face-subtle)
(set-face 'show-paren-match               'face-popout)
(set-face 'show-paren-mismatch            'face-normal)
(set-face-attribute 'tooltip nil :height 0.85)

;; » Modo Programacion
(set-face 'font-lock-comment-face         'face-faded)
(set-face 'font-lock-doc-face             'face-faded)
(set-face 'font-lock-string-face          'face-popout)
(set-face 'font-lock-constant-face        'face-salient)
(set-face 'font-lock-warning-face         'face-popout)
(set-face 'font-lock-function-name-face   'face-strong)
(set-face 'font-lock-variable-name-face   'face-strong)
(set-face 'font-lock-builtin-face         'face-salient)
(set-face 'font-lock-type-face            'face-salient)
(set-face 'font-lock-keyword-face         'face-salient)

;; » Documentacion
''(set-face 'info-header-node             'face-normal)
'(set-face 'Info-quoted                   'face-faded)
'(set-face 'info-title-1                  'face-strong)
'(set-face 'info-title-2                  'face-strong)
'(set-face 'info-title-3                  'face-strong)
'(set-face 'info-title-4                  'face-strong)

;; » Bookmarks
'(bookmark-menu-heading                   'face-strong)
'(bookmark-menu-bookmark                  'face-salient)

;; » Mensaje
'(message-cited-text                      'face-faded)
'(message-header-cc                       'default)
'(message-header-name                     'face-strong)
'(message-header-newsgroups               'default)
'(message-header-other                    'default)
'(message-header-subject                  'face-salient)
'(message-header-to                       'face-salient)
'(message-header-xheader                  'default)
'(message-mml                             'face-popout)
'(message-separator                       'face-faded)

;; » Outline
'(outline-1                               'face-strong)
'(outline-2                               'face-strong)
'(outline-3                               'face-strong)
'(outline-4                               'face-strong)
'(outline-5                               'face-strong)
'(outline-6                               'face-strong)
'(outline-7                               'face-strong)
'(outline-8                               'face-strong)

;; » Interfaces
'(widget-field                            'face-subtle)
'(widget-button                           'face-strong)
'(widget-single-line-field                'face-subtle)
'(custom-group-subtitle                   'face-strong)
'(custom-group-tag                        'face-strong)
'(custom-group-tag-1                      'face-strong)
'(custom-comment                          'face-faded)
'(custom-comment-tag                      'face-faded)
'(custom-changed                          'face-salient)
'(custom-modified                         'face-salient)
'(custom-face-tag                         'face-strong)
'(custom-variable-tag                     'default)
'(custom-invalid                          'face-popout)
'(custom-visibility                       'face-salient)
'(custom-state                            'face-salient)
'(custom-link                             'face-salient)

;; » Paquetes
'(package-description                     'default)
'(package-help-section-name               'default)
'(package-name                            'face-salient)
'(package-status-avail-obso               'face-faded)
'(package-status-available                'default)
'(package-status-built-in                 'face-salient)
'(package-status-dependency               'face-salient)
'(package-status-disabled                 'face-faded)
'(package-status-external                 'default)
'(package-status-held                     'default)
'(package-status-incompat                 'face-faded)
'(package-status-installed                'face-salient)
'(package-status-new                      'default)
'(package-status-unsigned                 'default)

;; » Flyspell
'(flyspell-duplicate                      'face-popout)
'(flyspell-incorrect                      'face-popout)

;; » Ido
'(ido-first-match                         'face-salient)
'(ido-only-match                          'face-faded)
'(ido-subdir                              'face-strong)

;; » Diferencia
'(diff-header                             'face-faded)
'(diff-file-header                        'face-strong)
'(diff-context                            'default)
'(diff-removed                            'face-faded)
'(diff-changed                            'face-popout)
'(diff-added                              'face-salient)
'(diff-refine-added                       '(face-salient face-strong))
'(diff-refine-changed                     'face-popout)
'(diff-refine-removed                     'face-faded)
'(set-face-attribute 'diff-refine-removed nil :strike-through t)

;; » Org Agendas
'(org-agenda-calendar-event               'default)
'(org-agenda-calendar-sexp                'face-faded)
'(org-agenda-clocking                     'face-faded)
'(org-agenda-column-dateline              'face-faded)
'(org-agenda-current-time                 'face-faded)
'(org-agenda-date                         'face-salient)
'(org-agenda-date-today                   '(face-salient face-strong))
'(org-agenda-date-weekend                 'face-faded)
'(org-agenda-diary                        'face-faded)
'(org-agenda-dimmed-todo-face             'face-faded)
'(org-agenda-done                         'face-faded)
'(org-agenda-filter-category              'face-faded)
'(org-agenda-filter-effort                'face-faded)
'(org-agenda-filter-regexp                'face-faded)
'(org-agenda-filter-tags                  'face-faded)
'(org-agenda-restriction-lock             'face-faded)
'(org-agenda-structure                    'face-faded)

;; » Org Mode
'(org-archived                            'face-faded)
'(org-block                               'face-faded)
'(org-block-begin-line                    'face-faded)
'(org-block-end-line                      'face-faded)
'(org-checkbox                            'face-faded)
'(org-checkbox-statistics-done            'face-faded)
'(org-checkbox-statistics-todo            'face-faded)
'(org-clock-overlay                       'face-faded)
'(org-code                                'face-faded)
'(org-column                              'face-faded)
'(org-column-title                        'face-faded)
'(org-date                                'face-faded)
'(org-date-selected                       'face-faded)
'(org-default                             'face-faded)
'(org-document-info                       'face-faded)
'(org-document-info-keyword               'face-faded)
'(org-document-title                      'face-faded)
'(org-done                                'default)
'(org-drawer                              'face-faded)
'(org-ellipsis                            'face-faded)
'(org-footnote                            'face-faded)
'(org-formula                             'face-faded)
'(org-headline-done                       'face-faded)
'(org-latex-and-related                   'face-faded)
'(org-level-1                             'face-strong)
'(org-level-2                             'face-strong)
'(org-level-3                             'face-strong)
'(org-level-4                             'face-strong)
'(org-level-5                             'face-strong)
'(org-level-6                             'face-strong)
'(org-level-7                             'face-strong)
'(org-level-8                             'face-strong)
'(org-link                                'face-salient)
'(org-list-dt                             'face-faded)
'(org-macro                               'face-faded)
'(org-meta-line                           'face-faded)
'(org-mode-line-clock                     'face-faded)
'(org-mode-line-clock-overrun             'face-faded)
'(org-priority                            'face-faded)
'(org-property-value                      'face-faded)
'(org-quote                               'face-faded)
'(org-scheduled                           'face-faded)
'(org-scheduled-previously                'face-faded)
'(org-scheduled-today                     'face-faded)
'(org-sexp-date                           'face-faded)
'(org-special-keyword                     'face-faded)
'(org-table                               'face-faded)
'(org-tag                                 'face-faded)
'(org-tag-group                           'face-faded)
'(org-target                              'face-faded)
'(org-time-grid                           'face-faded)
'(org-todo                                'face-popout)
'(org-upcoming-deadline                   'face-faded)
'(org-verbatim                            'face-faded)
'(org-verse                               'face-faded)
'(org-warning                             'face-popout)
(setq org-hide-emphasis-markers t)

;; » Mu4e
'(mu4e-attach-number-face                 'face-strong)
'(mu4e-cited-1-face                       'face-faded)
'(mu4e-cited-2-face                       'face-faded)
'(mu4e-cited-3-face                       'face-faded)
'(mu4e-cited-4-face                       'face-faded)
'(mu4e-cited-5-face                       'face-faded)
'(mu4e-cited-6-face                       'face-faded)
'(mu4e-cited-7-face                       'face-faded)
'(mu4e-compose-header-face                'face-faded)
'(mu4e-compose-separator-face             'face-faded)
'(mu4e-contact-face                       'face-salient)
'(mu4e-context-face                       'face-faded)
'(mu4e-draft-face                         'face-faded)
'(mu4e-flagged-face                       'face-faded)
'(mu4e-footer-face                        'face-faded)
'(mu4e-forwarded-face                     'face-faded)
'(mu4e-header-face                        'default)
'(mu4e-header-highlight-face              'face-subtle)
'(mu4e-header-key-face                    'face-strong)
'(mu4e-header-marks-face                  'face-faded)
'(mu4e-header-title-face                  'face-strong)
'(mu4e-header-value-face                  'default)
'(mu4e-highlight-face                     'face-popout)
'(mu4e-link-face                          'face-salient)
'(mu4e-modeline-face                      'face-faded)
'(mu4e-moved-face                         'face-faded)
'(mu4e-ok-face                            'face-faded)
'(mu4e-region-code                        'face-faded)
'(mu4e-replied-face                       'face-salient)
'(mu4e-special-header-value-face          'default)
'(mu4e-system-face                        'face-faded)
'(mu4e-title-face                         'face-faded)
'(mu4e-trashed-face                       'face-faded)
'(mu4e-unread-face                        'face-strong)
'(mu4e-url-number-face                    'face-faded)
'(mu4e-view-body-face                     'default)
'(mu4e-warning-face                       'face-faded)

;; »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»

;;; Autoloader
(when load-file-name
  (add-to-list 'custom-theme-load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide 'miemacs-config)

;;; miemacs-config.el ends here
