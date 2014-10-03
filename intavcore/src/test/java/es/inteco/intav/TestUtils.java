package es.inteco.intav;

import ca.utoronto.atrc.tile.accessibilitychecker.Evaluation;
import ca.utoronto.atrc.tile.accessibilitychecker.Problem;
import es.inteco.common.CheckAccessibility;
import es.inteco.intav.form.*;
import es.inteco.intav.utils.EvaluatorUtils;
import org.junit.Assert;

import java.util.List;
import java.util.Map;

/**
 *
 */
public final class TestUtils {

    /**
     * Constantes copiadas de la clase
     */
    public static final int OBS_VALUE_NOT_SCORE = 0;
    public static final int OBS_VALUE_RED_ZERO = 1;
    public static final int OBS_VALUE_GREEN_ZERO = 2;
    public static final int OBS_VALUE_GREEN_ONE = 3;

    private TestUtils() {
    }

    public static CheckAccessibility getCheckAccessibility(final String guideline) {
        CheckAccessibility checkAccessibility = new CheckAccessibility();
        checkAccessibility.setEntity("Tests unitarios");
        checkAccessibility.setGuideline(guideline);
        checkAccessibility.setGuidelineFile(guideline + ".xml");
        checkAccessibility.setLevel("aa");
        checkAccessibility.setUrl("http://www.example.org");
        checkAccessibility.setIdRastreo(0); // 0 - Indica análisis suelto (sin crawling y sin guardar datos en la BD de observatorio)
        checkAccessibility.setWebService(false);

        return checkAccessibility;
    }

    public static int getNumProblems(final List<Problem> problems, int idCheck) {
        int numProblems = 0;
        for (Problem problem : problems) {
            if (problem.getCheck().getId() == idCheck) {
                numProblems++;
            }
        }
        return numProblems;
    }

    public static void checkEvaluation(final ObservatoryEvaluationForm observatoryEvaluation, final Map<String, Number> valores) {
        if (valores.containsKey("score")) {
            Assert.assertEquals("Score", valores.get("score"), observatoryEvaluation.getScore());
        }
        for (AspectScoreForm aspectScore : observatoryEvaluation.getAspects()) {
            if (valores.containsKey(aspectScore.getName())) {
                Assert.assertEquals(aspectScore.getName(), valores.get(aspectScore.getName()), aspectScore.getScore());
            }
        }
        for (ObservatoryLevelForm observatoryLevel : observatoryEvaluation.getGroups()) {
            if (valores.containsKey(observatoryLevel.getName())) {
                Assert.assertEquals(observatoryLevel.getName(), valores.get(observatoryLevel.getName()), observatoryLevel.getScore());
            }
            for (ObservatorySuitabilityForm observatorySuitability : observatoryLevel.getSuitabilityGroups()) {
                if (valores.containsKey(observatoryLevel.getName() + " " + observatorySuitability.getName())) {
                    Assert.assertEquals(observatoryLevel.getName() + " " + observatorySuitability.getName(), valores.get(observatoryLevel.getName() + " " + observatorySuitability.getName()), observatorySuitability.getScore());
                }
                for (ObservatorySubgroupForm observatorySubgroup : observatorySuitability.getSubgroups()) {
                    if (valores.containsKey(observatorySubgroup.getDescription())) {
                        Assert.assertEquals(observatorySubgroup.getDescription(), valores.get(observatorySubgroup.getDescription()).intValue(), observatorySubgroup.getValue());
                    }
                }
            }
        }
    }

    public static void checkVerificacion(ObservatoryEvaluationForm observatoryEvaluation, String idSubgroup, int expectedValue) {
        for (ObservatoryLevelForm observatoryLevel : observatoryEvaluation.getGroups()) {
            for (ObservatorySuitabilityForm observatorySuitability : observatoryLevel.getSuitabilityGroups()) {
                for (ObservatorySubgroupForm observatorySubgroup : observatorySuitability.getSubgroups()) {
                    if (observatorySubgroup.getDescription().equals(idSubgroup)) {
                        Assert.assertEquals(observatorySubgroup.getDescription(), expectedValue, observatorySubgroup.getValue());
                    }
                }
            }
        }
    }

    public static void checkVerificacion(CheckAccessibility checkAccessibility, String idSubgroup, int expectedValue) throws Exception {
        Evaluation evaluation = EvaluatorUtils.evaluateContent(checkAccessibility, "es");
        ObservatoryEvaluationForm oef = EvaluatorUtils.generateObservatoryEvaluationForm(evaluation, "", true);
        checkVerificacion(oef, idSubgroup, expectedValue);
    }
}
