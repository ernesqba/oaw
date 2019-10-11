/*******************************************************************************
* Copyright (C) 2017 MINHAFP, Ministerio de Hacienda y Función Pública, 
* This program is licensed and may be used, modified and redistributed under the terms
* of the European Public License (EUPL), either version 1.2 or (at your option) any later 
* version as soon as they are approved by the European Commission.
* Unless required by applicable law or agreed to in writing, software distributed under the 
* License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
* ANY KIND, either express or implied. See the License for the specific language governing 
* permissions and more details.
* You should have received a copy of the EUPL1.2 license along with this program; if not, 
* you may find it at http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017D0863
******************************************************************************/
package es.gob.oaw.css.checks;

import javax.annotation.Nonnull;

import com.helger.css.decl.CSSDeclaration;

import es.gob.oaw.css.OAWCSSVisitor;

/**
 * Clase para detectar si se aplican 'line-height', 'letter-spacing',
 * 'word-spacing' con important
 */
public class CSSForceSpacingDocumentHandler extends OAWCSSVisitor {

	@Override
	public void onDeclaration(@Nonnull final CSSDeclaration cssDeclaration) {
		if (isValidMedia()) {
			if ("line-height".equals(cssDeclaration.getProperty())
					|| "letter-spacing".equals(cssDeclaration.getProperty())
					|| "word-spacing".equals(cssDeclaration.getProperty())) {
				if (cssDeclaration.isImportant()) {
					getProblems().add(createCSSProblem("", cssDeclaration));
				}
			}
		}
	}

}
